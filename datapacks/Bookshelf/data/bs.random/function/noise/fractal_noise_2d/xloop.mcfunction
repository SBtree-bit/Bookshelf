# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#noise-generators
# ------------------------------------------------------------------------------------------------------------

data modify storage bs:out random.fractal_noise_2d[-1] append value 0f
execute store result storage bs:out random.fractal_noise_2d[-1][-1] float .001 run function #bs.random:fractal_noise

execute store result score $random.fractal_noise.x bs.in run scoreboard players add #x bs.ctx 1
scoreboard players operation $random.fractal_noise.x bs.in *= #k bs.ctx
execute if score #x bs.ctx < #w bs.ctx run function bs.random:noise/fractal_noise_2d/xloop
