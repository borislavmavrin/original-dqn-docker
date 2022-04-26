# Docker wrapper for the original implementation of the DQN in torch - very instructive
Original code taken from https://www.deepmind.com/open-source/dqn
Original publication "Human-level control through deep reinforcement learning": https://www.nature.com/articles/nature14236
nvidia-docker for original DeepMind's implementation of DQN with slight tuning to make it work with current torch and cuda 8.0.
It means you can run the gpu implementation on Pascal cards: GTX 1080 etc.
 - build.sh builds the required container. The additional arguments are for the proxy. You can safely remove those arguments
 if you are not behind the proxy.
 - run.sh runs the container in interactive mode. Then you simply run
 # ./run_gpu pong
 or any other game you have rom for. There are a couple of roms in the container.
 Equivalently you can run it on cpu by:
 # ./run_cpu pong
