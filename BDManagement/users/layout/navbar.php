 <!-- Fixed navbar -->
    <nav class="navbar navbar-light bg-light navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Blood Donation Management</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
                        <li class="<?php
                        if (isset($setAboutActive)) {
                            echo $setAboutActive;
                        } else {
                            echo '';
                        }
                        ?>"><a href="index.php">About Us</a></li>
                        <li class="<?php if(isset($setMemberActive)){ echo $setMemberActive; } else { echo ''; } ?>">
                            <a href="member.php">Our Members</a>
                        </li>
                        
                        <li class="<?php if(isset($setJoinUsActive)){ echo $setRegisterActive; } else { echo ''; } ?>">
                            <a href="register.php">Register</a>
                        </li>
                        
                        <li class="<?php if(isset($setAvailabilityActive)) {echo $setAvailabilityActive;} else {echo '';} ?>">
                            <a href="availability.php">Check Availability</a>
                        </li>
                        
                        <li class="">
                            <a href="../index.php">Employee Login</a>
                        </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	</br></br>