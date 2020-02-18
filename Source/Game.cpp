#include <string>

#include <Engine/DebugPrinter.h>
#include <Engine/Input.h>
#include <Engine/InputEvents.h>
#include <Engine/Keys.h>
#include <Engine/Sprite.h>

#include "Game.h"
#include "Utility/Rect.h"
#include "Utility/Vector2.h"

/**
 *   @brief   Default Constructor.
 *   @details Consider setting the game's width and height
 *            and even seeding the random number generator.
 */
BreakoutGame::BreakoutGame() {}

/**
 *   @brief   Destructor.
 *   @details Remove any non-managed memory and callbacks.
 */
BreakoutGame::~BreakoutGame()
{
  this->inputs->unregisterCallback(static_cast<unsigned int>(key_callback_id));
  this->inputs->unregisterCallback(
    static_cast<unsigned int>(mouse_callback_id));
}

/**
 *   @brief   Initialises the game.
 *   @details The game window is created and all assets required to
 *            run the game are loaded. The keyHandler and clickHandler
 *            callback should also be set in the initialise function.
 *   @return  True if the game initialised correctly.
 */
bool BreakoutGame::init()
{
  setupResolution();
  if (!initAPI())
  {
    return false;
  }

  toggleFPS();
  renderer->setClearColour(ASGE::COLOURS::BLACK);
  renderer->setWindowTitle("Breakout!");

  velocity.getx();

  if (paddle.addSpriteComponent(renderer.get(),
                                "data/Textures/puzzlepack/png/paddleRed.png"))
  {
    ASGE::Sprite* paddleSprite = paddle.spriteComponent()->getSprite();
    paddleSprite->xPos((640 / 2.f) - (paddleSprite->width() / 2));
    paddleSprite->yPos(700);
  }
  if (ball.addSpriteComponent(renderer.get(),
                              "data/Textures/puzzlepack/png/ballBlue.png"))
  {
    ASGE::Sprite* ballSprite = ball.spriteComponent()->getSprite();
    ballSprite->xPos((640 / 2.f) - (ballSprite->width() / 2));
    ballSprite->yPos(675);
  }

  float last_position = 0;
  float row = 100;

  for (int i = 0; i < arrayLength; ++i)
  {
    if (blocks[i].addSpriteComponent(renderer.get(),
                                     "data/Textures/puzzlepack/png/"
                                     "element_blue_rectangle.png"))
    {
      ASGE::Sprite* blockSprite = blocks[i].spriteComponent()->getSprite();
      blockSprite->xPos(0 + last_position);
      last_position = last_position + blockSprite->width();
      blockSprite->yPos(row);
      blocks[i].visibility = true;
    }
  }
  last_position = 0;

  for (int i = 0; i < arrayLength; ++i)
  {
    if (blocks2[i].addSpriteComponent(renderer.get(),
                                      "data/Textures/puzzlepack/png/"
                                      "element_green_rectangle.png"))
    {
      ASGE::Sprite* blockSprite = blocks2[i].spriteComponent()->getSprite();
      blockSprite->xPos(0 + last_position);
      last_position = last_position + blockSprite->width();
      blockSprite->yPos(row + blockSprite->height());
      blocks2[i].visibility = true;
    }
  }
  for (int i = 0; i < 5; ++i)
  {
    if (gems[i].addSpriteComponent(renderer.get(),
                                   "data/Textures/puzzlepack/png/"
                                   "element_purple_diamond.png"))
    {
      ASGE::Sprite* gemSprite = gems[i].spriteComponent()->getSprite();
      gemSprite->xPos(float(gem_loc[i]));
      gemSprite->yPos(-30);
      gems[i].visibility = false;
    }
  }

  // input handling functions
  inputs->use_threads = false;

  key_callback_id =
    inputs->addCallbackFnc(ASGE::E_KEY, &BreakoutGame::keyHandler, this);

  mouse_callback_id = inputs->addCallbackFnc(
    ASGE::E_MOUSE_CLICK, &BreakoutGame::clickHandler, this);

  return true;
}

/**
 *   @brief   Sets the game window resolution
 *   @details This function is designed to create the window size, any
 *            aspect ratio scaling factors and safe zones to ensure the
 *            game frames when resolutions are changed in size.
 *   @return  void
 */
void BreakoutGame::setupResolution()
{
  // how will you calculate the game's resolution?
  // will it scale correctly in full screen? what AR will you use?
  // how will the game be framed in native 16:9 resolutions?
  // here are some abritrary values for you to adjust as you see fit
  // https://www.gamasutra.com/blogs/KenanBolukbasi/20171002/306822/Scaling_and_MultiResolution_in_2D_Games.php
  game_width = 640;
  game_height = 750;
}

/**
 *   @brief   Processes any key inputs
 *   @details This function is added as a callback to handle the game's
 *            keyboard input. For this game, calls to this function
 *            are thread safe, so you may alter the game's state as
 *            you see fit.
 *   @param   data The event data relating to key input.
 *   @see     KeyEvent
 *   @return  void
 */
void BreakoutGame::keyHandler(const ASGE::SharedEventData data)
{
  auto key = static_cast<const ASGE::KeyEvent*>(data.get());

  if (key->key == ASGE::KEYS::KEY_ESCAPE)
  {
    signalExit();
  }
  if (in_menu && key->key == ASGE::KEYS::KEY_ENTER)
  {
    in_menu = false;
    playing = true;
  }

  if (key->key == ASGE::KEYS::KEY_A && key->action == ASGE::KEYS::KEY_PRESSED)
  {
    paddle_left = true;
  }

  if (key->key == ASGE::KEYS::KEY_A && key->action == ASGE::KEYS::KEY_RELEASED)
  {
    paddle_left = false;
  }

  if (key->key == ASGE::KEYS::KEY_D && key->action == ASGE::KEYS::KEY_PRESSED)
  {
    paddle_right = true;
  }
  if (key->key == ASGE::KEYS::KEY_D && key->action == ASGE::KEYS::KEY_RELEASED)
  {
    paddle_right = false;
  }
}

/**
 *   @brief   Processes any click inputs
 *   @details This function is added as a callback to handle the game's
 *            mouse button input. For this game, calls to this function
 *            are thread safe, so you may alter the game's state as you
 *            see fit.
 *   @param   data The event data relating to key input.
 *   @see     ClickEvent
 *   @return  void
 */
void BreakoutGame::clickHandler(const ASGE::SharedEventData data)
{
  auto click = static_cast<const ASGE::ClickEvent*>(data.get());

  double x_pos = click->xpos;
  double y_pos = click->ypos;

  ASGE::DebugPrinter{} << "x_pos: " << x_pos << std::endl;
  ASGE::DebugPrinter{} << "y_pos: " << y_pos << std::endl;
}

/**
 *   @brief   Updates the scene
 *   @details Prepares the renderer subsystem before drawing the
 *            current frame. Once the current frame is has finished
 *            the buffers are swapped accordingly and the image shown.
 *   @return  void
 */
void BreakoutGame::update(const ASGE::GameTime& game_time)
{
  if (!in_menu)
  {
    ballMovement(game_time);
    gemMovement(game_time);

    float x_pos = paddle.spriteComponent()->getSprite()->xPos();

    if (paddle_left)
    {
      velocity.setx(-1);

      if (x_pos <= 0)
      {
        paddle_left = false;
      }
      else
      {
        x_pos += 600 * velocity.getx() *
                 static_cast<float>(game_time.delta_time.count() / 1000.f);
        paddle.spriteComponent()->getSprite()->xPos(x_pos);
      }
    }

    if (paddle_right)
    {
      velocity.setx(1);

      if (x_pos >= 640 - paddle.spriteComponent()->getSprite()->width())
      {
        paddle_right = false;
      }
      else
      {
        x_pos += 600 * velocity.getx() *
                 static_cast<float>(game_time.delta_time.count() / 1000.f);
        paddle.spriteComponent()->getSprite()->xPos(x_pos);
      }
    }
  }
  if (remaining_blocks == 0)
  {
    game_won = true;
    playing = false;
  }
  if (life_left == 0)
  {
    game_lose = true;
    playing = false;
  }

  // auto dt_sec = game_time.delta_time.count() / 1000.0;
  // make sure you use delta time in any movement calculations!
}

/**
 *   @brief   Renders the scene
 *   @details Renders all the game objects to the current frame.
 *            Once the current frame is has finished the buffers are
 *            swapped accordingly and the image shown.
 *   @return  void
 */
void BreakoutGame::render(const ASGE::GameTime&)
{
  renderer->setFont(0);

  if (in_menu)
  {
    std::string welcome = "Press enter to start the game";
    renderer->renderText(welcome, 150, 360, 1.0, ASGE::COLOURS::WHITE);
  }

  else if (playing)
  {
    std::string life_str = "Life:" + std::to_string(life_left);
    renderer->renderText(life_str, 550, 50, 1.0, ASGE::COLOURS::WHITE);
    std::string score_str = "Score:" + std::to_string(score);
    renderer->renderText(score_str, 500, 75, 1.0, ASGE::COLOURS::WHITE);
    renderer->renderSprite(*paddle.spriteComponent()->getSprite());
    renderer->renderSprite(*ball.spriteComponent()->getSprite());

    for (int i = 0; i < arrayLength; ++i)
    {
      if (blocks[i].visibility)
      {
        renderer->renderSprite(*blocks[i].spriteComponent()->getSprite());
      }
    }
    for (int i = 0; i < arrayLength; ++i)
    {
      if (blocks2[i].visibility)
      {
        renderer->renderSprite(*blocks2[i].spriteComponent()->getSprite());
      }
    }
    for (int i = 0; i < 5; ++i)
    {
      if (gems[i].visibility)
      {
        renderer->renderSprite(*gems[i].spriteComponent()->getSprite());
      }
    }
  }
  else if (game_lose)
  {
    renderer->renderText(
      "You Lose", game_width / 3, game_height / 2, 2.0, ASGE::COLOURS::WHITE);
  }
  else if (game_won)
  {
    renderer->renderText("Congratulations",
                         game_width / 3,
                         game_height / 2,
                         2.0,
                         ASGE::COLOURS::WHITE);
  }
}

void BreakoutGame::ballMovement(const ASGE::GameTime& game_time)
{
  float x_pos = ball.spriteComponent()->getSprite()->xPos();
  float y_pos = ball.spriteComponent()->getSprite()->yPos();

  float x_direction = ball.getVector()->x;
  float y_direction = ball.getVector()->y;

  double dt_sec = game_time.delta_time.count() / 1000.f;
  double speed = 450 * dt_sec;

  x_pos += float(speed * x_direction);
  y_pos += float(speed * y_direction);

  if (x_pos <= 0)
  {
    ball.setVector(-x_direction, y_direction);
    paddle_collision = false;
    block_collision = false;
  }
  if (x_pos >= 640 - (ball.spriteComponent()->getSprite()->width() / 2))
  {
    ball.setVector(-x_direction, y_direction);
    paddle_collision = false;
    block_collision = false;
  }
  if (y_pos <= 0)
  {
    ball.setVector(x_direction, -y_direction);
    paddle_collision = false;
    block_collision = false;
  }
  if (y_pos >= 750)
  {
    life_left--;

    float start_x = 640 / 2.f;
    float start_y = 675;

    ball.setVector(x_direction, -y_direction);

    x_pos = start_x;
    y_pos = start_y;
  }
  if (!paddle_collision)
  {
    if (ball.spriteComponent()->getBoundingBox().isInside(
          paddle.spriteComponent()->getBoundingBox()))
    {
      ball.setVector(x_direction, -y_direction);
      paddle_collision = true;
      block_collision = false;
    }
  }

  if (!block_collision)
  {
    for (int i = 0; i < arrayLength; ++i)
    {
      if (ball.spriteComponent()->getBoundingBox().isInside(
            blocks[i].spriteComponent()->getBoundingBox()) &&
          blocks[i].visibility)
      {
        ball.setVector(x_direction, -y_direction);
        paddle_collision = false;
        block_collision = true;
        blocks[i].visibility = false;
        remaining_blocks--;
        score++;
      }
    }
    for (int i = 0; i < arrayLength; ++i)
    {
      if (ball.spriteComponent()->getBoundingBox().isInside(
            blocks2[i].spriteComponent()->getBoundingBox()) &&
          blocks2[i].visibility)
      {
        ball.setVector(x_direction, -y_direction);
        paddle_collision = false;
        block_collision = true;
        blocks2[i].visibility = false;
        remaining_blocks--;
        score++;
      }
    }
  }
  ball.getVector()->normalise();
  ball.spriteComponent()->getSprite()->xPos(x_pos);
  ball.spriteComponent()->getSprite()->yPos(y_pos);
}

void BreakoutGame::gemMovement(const ASGE::GameTime& game_time)
{
  auto delta_time = game_time.delta_time.count();

  if (gem_spawn)
  {
    gem_start = float(game_time.game_time.count()) / 1000.f;
    gem_spawn = false;
  }
  gem_travel = 5 - ((float(game_time.game_time.count()) / 1000.f) - gem_start);

  for (int i = 0; i < 5; ++i)
  {
    if (gems_spawned[0] && gems_spawned[1] && gems_spawned[2] &&
        gems_spawned[3] && gems_spawned[4])
    {
      for (int j = 0; j < 5; ++j)
      {
        gems_spawned[j] = false;
      }
    }
    else
    {
      if (gem_travel <= 0 && !gems[i].visibility && !gem_spawn &&
          !gems_spawned[i])
      {
        gems[i].visibility = true;
        gem_spawn = true;
        gems_spawned[i] = true;
      }
    }
  }
  for (int i = 0; i < 5; ++i)
  {
    ASGE::Sprite* gem_sprite = gems[i].spriteComponent()->getSprite();
    float y_pos = gem_sprite->yPos();
    double dt_sec = delta_time / 1000.f;

    if (gems[i].visibility)
    {
      y_pos -= float(100 * gems[i].getVector()->y * dt_sec);
      gem_sprite->yPos(y_pos);
    }

    if (gems[i].spriteComponent()->getBoundingBox().isInside(
          paddle.spriteComponent()->getBoundingBox()) &&
        gems[i].visibility)
    {
      gems[i].visibility = false;
      gem_sprite->xPos(float(gem_loc[i]));
      gem_sprite->yPos(-30.f);
      score += 5;
    }
    else if (gem_sprite->yPos() > float(game_height))
    {
      gems[i].visibility = false;
      gem_sprite->xPos(float(gem_loc[i]));
      gem_sprite->yPos(-30.f);
    }
  }
}
