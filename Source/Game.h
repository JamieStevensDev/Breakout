#pragma once
#include <Engine/OGLGame.h>
#include <string>

#include "Components/GameObject.h"
#include "Utility/Rect.h"
#include "Utility/Vector2.h"

/**
 *  An OpenGL Game based on ASGE.
 */
class BreakoutGame : public ASGE::OGLGame
{
 public:
  BreakoutGame();
  ~BreakoutGame();
  virtual bool init() override;

 private:
  void keyHandler(const ASGE::SharedEventData data);
  void clickHandler(const ASGE::SharedEventData data);
  void setupResolution();
  void ballMovement(const ASGE::GameTime& game_time);
  void gemMovement(const ASGE::GameTime& game_time);

  virtual void update(const ASGE::GameTime&) override;
  virtual void render(const ASGE::GameTime&) override;

  int key_callback_id = -1;   /**< Key Input Callback ID. */
  int mouse_callback_id = -1; /**< Mouse Input Callback ID. */

  int life_left = 3;
  int remaining_blocks = 20;
  int score = 0;
  int arrayLength = 10;
  // Add your GameObjects
  GameObject paddle;
  GameObject ball;
  GameObject blocks[10];
  GameObject blocks2[10];
  GameObject velocity;
  GameObject gems[5];

  bool in_menu = true;
  bool paddle_left = false;
  bool paddle_right = false;
  bool paddle_collision = false;
  bool block_collision = false;
  bool playing = false;
  bool game_lose = false;
  bool game_won = false;

  //gem variables
  float gem_start = 0;
  float gem_travel = 0;
  bool gem_spawn = true;
  bool gems_spawned[5] = { false, false, false, false, false };

  int gem_loc[5] = { 400, 320, 154, 270, 550 }; //gem spawn location
};