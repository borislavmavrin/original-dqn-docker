# original-dqn-docker
nvidia-docker for original DeepMind's implementation of DQN with slight tuning to makw it work with current torch and cuda 8.0.
It means you can run the gpu implementation on Pascal cards: GTX 1080 etc.
 - build.sh builds the required container. The additional arguments are for the proxy. You can safely remove those arguments
 if you are not behind the proxy.
 - run.sh runs the container in interactive mode. Then you simply run
 # ./run_gpu pong
 or any other game you have rom for. There are a couple of roms in the container.
 Equivalently you can run it on cpu by:
 # ./run_cpu pong
 
 
