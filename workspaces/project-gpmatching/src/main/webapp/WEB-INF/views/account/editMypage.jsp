<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon/favicon.ico">

<!-- Libs CSS -->


<link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="../assets/libs/dropzone/dist/dropzone.css"  rel="stylesheet">
<link href="../assets/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" />
<link href="../assets/libs/prismjs/themes/prism-okaidia.css" rel="stylesheet">








<!-- Theme CSS -->
<link rel="stylesheet" href="../assets/css/theme.min.css">
  <title>Setting | Dash Ui - Bootstrap 5 Admin Dashboard Template</title>
</head>

<body class="bg-light">
  <div id="db-wrapper">
    <!-- navbar vertical -->
     <!-- Sidebar -->
 <nav class="navbar-vertical navbar">
    <div class="nav-scroller">
        <!-- Brand logo -->
        <a class="navbar-brand" href="../index.html">
            <img src="../assets/images/brand/logo/logo.svg" alt="" />
        </a>
        <!-- Navbar nav -->
        <ul class="navbar-nav flex-column" id="sideNavbar">
            <li class="nav-item">
                <a class="nav-link has-arrow " href="../index.html">
                    <i data-feather="home" class="nav-icon icon-xs me-2"></i>  Dashboard
                </a>

            </li>


         <!-- Nav item -->
         <li class="nav-item">
            <div class="navbar-heading">Layouts & Pages</div>
        </li>


             <!-- Nav item -->
             <li class="nav-item">
                <a class="nav-link has-arrow " href="#!" data-bs-toggle="collapse" data-bs-target="#navPages" aria-expanded="false" aria-controls="navPages">
                    <i
                    data-feather="layers"

                    class="nav-icon icon-xs me-2">
                </i> Pages
                </a>

                <div id="navPages" class="collapse  show " data-bs-parent="#sideNavbar">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link " href="../pages/profile.html">
                                Profile
                </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link has-arrow   active  "  href="../pages/settings.html" >
                                Settings
                                </a>

                        </li>


                        <li class="nav-item">
                            <a class="nav-link " href="../pages/billing.html">
                                Billing
                </a>
                        </li>




                        <li class="nav-item">
                            <a class="nav-link " href="../pages/pricing.html">
                               Pricing
                </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="../pages/404-error.html">
                                404 Error
                </a>
                        </li>
                    </ul>
                </div>

                </li>


                        <!-- Nav item -->
                        <li class="nav-item">
                            <a class="nav-link has-arrow  collapsed " href="#!" data-bs-toggle="collapse" data-bs-target="#navAuthentication" aria-expanded="false" aria-controls="navAuthentication">
                                <i data-feather="lock" class="nav-icon icon-xs me-2">
                                </i> Authentication
                            </a>
                            <div id="navAuthentication" class="collapse " data-bs-parent="#sideNavbar">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link " href="../pages/sign-in.html"> Sign In</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link  " href="../pages/sign-up.html"> Sign Up</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="../pages/forget-password.html">
                                             Forget Password
                                </a>
                                    </li>

                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="../pages/layout.html">
                                <i
                                    data-feather="sidebar"

                                    class="nav-icon icon-xs me-2"
                                >
                                </i
                                      >
                                Layouts
                            </a>
                        </li>

                        <!-- Nav item -->
                        <li class="nav-item">
                            <div class="navbar-heading">UI Components</div>
                        </li>

                        <!-- Nav item -->
                        <li class="nav-item">
                            <a class="nav-link has-arrow " href="../docs/accordions.html" >
                                <i data-feather="package" class="nav-icon icon-xs me-2" >
                            </i>  Components
                            </a>
                         </li>
                  

                        <li class="nav-item">
                            <a class="nav-link has-arrow  collapsed " href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevel" aria-expanded="false" aria-controls="navMenuLevel">
                                <i
                                data-feather="corner-left-down"

                                class="nav-icon icon-xs me-2"
                            >
                            </i
                                      > Menu Level
                            </a>
                            <div id="navMenuLevel" class="collapse " data-bs-parent="#sideNavbar">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link has-arrow " href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevelSecond" aria-expanded="false" aria-controls="navMenuLevelSecond">
                                    Two Level
                                </a>
                                        <div id="navMenuLevelSecond" class="collapse" data-bs-parent="#navMenuLevel">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a class="nav-link " href="#!">  NavItem 1</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link " href="#!">  NavItem 2</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link has-arrow  collapsed  " href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevelThree" aria-expanded="false" aria-controls="navMenuLevelThree">
                                    Three Level
                                </a>
                                        <div id="navMenuLevelThree" class="collapse " data-bs-parent="#navMenuLevel">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a class="nav-link  collapsed " href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevelThreeOne" aria-expanded="false" aria-controls="navMenuLevelThreeOne">
                                                         NavItem 1
                                            </a>
                                                    <div id="navMenuLevelThreeOne" class="collapse collapse " data-bs-parent="#navMenuLevelThree">
                                                        <ul class="nav flex-column">
                                                            <li class="nav-item">
                                                                <a class="nav-link " href="#!">
                                                                     NavChild Item 1
                                                        </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link " href="#!">  Nav Item 2</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>

                                         <!-- Nav item -->
                        <li class="nav-item">
                            <div class="navbar-heading">Documentation</div>
                        </li>

                        <!-- Nav item -->
                        <li class="nav-item">
                            <a class="nav-link has-arrow " href="../docs/index.html" >
                                <i data-feather="clipboard" class="nav-icon icon-xs me-2" >
                            </i>  Docs
                            </a>
                         </li>
                         <li class="nav-item">
                            <a class="nav-link has-arrow " href="../docs/changelog.html" >
                                <i data-feather="git-pull-request" class="nav-icon icon-xs me-2" >
                            </i>  Changelog
                            </a>
                         </li>




                    </ul>

                </div>
</nav>
    <!-- page content -->
    <div id="page-content">
      <div class="header @@classList">
  <!-- navbar -->
  <nav class="navbar-classic navbar navbar-expand-lg">
    <a id="nav-toggle" href="#"><i
        data-feather="menu"

        class="nav-icon me-2 icon-xs"></i></a>
    <div class="ms-lg-3 d-none d-md-none d-lg-block">
      <!-- Form -->
      <form class="d-flex align-items-center">
        <input type="search" class="form-control" placeholder="Search" />
      </form>
    </div>
    <!--Navbar nav -->
    <ul class="navbar-nav navbar-right-wrap ms-auto d-flex nav-top-wrap">
      <li class="dropdown stopevent">
        <a class="btn btn-light btn-icon rounded-circle indicator
          indicator-primary text-muted" href="#" role="button"
          id="dropdownNotification" data-bs-toggle="dropdown" aria-haspopup="true"
          aria-expanded="false">
          <i class="icon-xs" data-feather="bell"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end"
          aria-labelledby="dropdownNotification">
          <div>
            <div class="border-bottom px-3 pt-2 pb-3 d-flex
              justify-content-between align-items-center">
              <p class="mb-0 text-dark fw-medium fs-4">Notifications</p>
              <a href="#" class="text-muted">
                <span>
                  <i class="me-1 icon-xxs" data-feather="settings"></i>
                </span>
              </a>
            </div>
            <!-- List group -->
            <ul class="list-group list-group-flush notification-list-scroll">
              <!-- List group item -->
              <li class="list-group-item bg-light">


                <a href="#" class="text-muted">
                    <h5 class=" mb-1">Rishi Chopra</h5>
                    <p class="mb-0">
                      Mauris blandit erat id nunc blandit, ac eleifend dolor pretium.
                    </p>
                </a>



          </li>
             <!-- List group item -->
             <li class="list-group-item">


              <a href="#" class="text-muted">
                  <h5 class=" mb-1">Neha Kannned</h5>
                  <p class="mb-0">
                    Proin at elit vel est condimentum elementum id in ante. Maecenas et sapien metus.
                  </p>
              </a>



        </li>
              <!-- List group item -->
              <li class="list-group-item">


                <a href="#" class="text-muted">
                    <h5 class=" mb-1">Nirmala Chauhan</h5>
                    <p class="mb-0">
                      Morbi maximus urna lobortis elit sollicitudin sollicitudieget elit vel pretium.
                    </p>
                </a>



          </li>
              <!-- List group item -->
              <li class="list-group-item">


                    <a href="#" class="text-muted">
                        <h5 class=" mb-1">Sina Ray</h5>
                        <p class="mb-0">
                          Sed aliquam augue sit amet mauris volutpat hendrerit sed nunc eu diam.
                        </p>
                    </a>



              </li>
            </ul>
            <div class="border-top px-3 py-2 text-center">
              <a href="#" class="text-inherit fw-semi-bold">
                View all Notifications
              </a>
            </div>
          </div>
        </div>
      </li>
      <!-- List -->
      <li class="dropdown ms-2">
        <a class="rounded-circle" href="#" role="button" id="dropdownUser"
          data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <div class="avatar avatar-md avatar-indicators avatar-online">
            <img alt="avatar" src="../assets/images/avatar/avatar-1.jpg"
              class="rounded-circle" />
          </div>
        </a>
        <div class="dropdown-menu dropdown-menu-end"
          aria-labelledby="dropdownUser">
          <div class="px-4 pb-0 pt-2">


            <div class="lh-1 ">
              <h5 class="mb-1"> John E. Grainger</h5>
              <a href="#" class="text-inherit fs-6">View my profile</a>
            </div>
            <div class=" dropdown-divider mt-3 mb-2"></div>
          </div>

          <ul class="list-unstyled">

            <li>
              <a class="dropdown-item" href="#">
                <i class="me-2 icon-xxs dropdown-item-icon" data-feather="user"></i>Edit
                Profile
              </a>
            </li>
            <li>
              <a class="dropdown-item"
                href="#">
                <i class="me-2 icon-xxs dropdown-item-icon"
                  data-feather="activity"></i>Activity Log
              </a>


            </li>

            <li>
              <a class="dropdown-item text-primary" href="#">
                <i class="me-2 icon-xxs text-primary dropdown-item-icon"
                  data-feather="star"></i>Go Pro
              </a>
            </li>
            <li>
              <a class="dropdown-item" href="#">
                <i class="me-2 icon-xxs dropdown-item-icon"
                  data-feather="settings"></i>Account Settings
              </a>
            </li>
            <li>
              <a class="dropdown-item" href="../index.html">
                <i class="me-2 icon-xxs dropdown-item-icon"
                  data-feather="power"></i>Sign Out
              </a>
            </li>
          </ul>

        </div>
      </li>
    </ul>
  </nav>
</div>
      <!-- Container fluid -->
      <div class="container-fluid p-6">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-12">
            <!-- Page header -->
         
              <div class="border-bottom pb-4 mb-4">              
                  <h3 class="mb-0 fw-bold">General</h3>             
                
              </div>
           
          </div>
        </div>
        <div class="row mb-8">
          <div class="col-xl-3 col-lg-4 col-md-12 col-12">
            <div class="mb-4 mb-lg-0">
              <h4 class="mb-1">General Setting</h4>
              <p class="mb-0 fs-5 text-muted">Profile configuration settings </p>
            </div>

          </div>

          <div class="col-xl-9 col-lg-8 col-md-12 col-12">
            <!-- card -->
            <div class="card">
              <!-- card body -->
              <div class="card-body">
                <div class=" mb-6">
                  <h4 class="mb-1">General Settings</h4>

                </div>
                <div class="row align-items-center mb-8">
                  <div class="col-md-3 mb-3 mb-md-0">
                    <h5 class="mb-0">Avatar</h5>
                  </div>
                  <div class="col-md-9">
                    <div class="d-flex align-items-center">
                      <div class="me-3">
                        <img src="../assets/images/avatar/avatar-5.jpg" class="rounded-circle avatar avatar-lg" alt="">
                      </div>
                      <div>
                        <button type="submit" class="btn btn-outline-white
                            me-1">Change</button>
                        <button type="submit" class="btn btn-outline-white">Remove</button>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- col -->
                <div class="row mb-8">
                  <div class="col-md-3 mb-3 mb-md-0">
                    <!-- heading -->
                    <h5 class="mb-0">Cover photo</h5>
                  </div>
                  <div class="col-md-9">
                    <!-- dropzone input -->
                    <div>
                      <form action="#" class="dropzone mb-3 border-dashed">
                        <div class="fallback">
                          <input name="file" type="file" multiple />
                        </div>
                      </form>
                      <button type="submit" class="btn btn-outline-white">Change</button>
                    </div>
                  </div>
                </div>
                <div>
                  <!-- border -->
                  <div class="mb-6">
                    <h4 class="mb-1">Basic information</h4>

                  </div>
                  <form>
                    <!-- row -->

                    <div class="mb-3 row">
                      <label for="fullName" class="col-sm-4 col-form-label
                          form-label">Full name</label>
                      <div class="col-sm-4 mb-3 mb-lg-0">
                        <input type="text" class="form-control" placeholder="First name" id="fullName" required>
                      </div>
                      <div class="col-sm-4">
                        <input type="text" class="form-control" placeholder="Last name" id="lastName" required>
                      </div>
                    </div>

                    <!-- row -->
                    <div class="mb-3 row">
                      <label for="email" class="col-sm-4 col-form-label
                          form-label">Email</label>
                      <div class="col-md-8 col-12">
                        <input type="email" class="form-control" placeholder="Email" id="email" required>
                      </div>
                    </div>
                    <!-- row -->
                    <div class="mb-3 row">
                      <label for="phone" class="col-sm-4 col-form-label
                          form-label">Phone <span class="text-muted">(Optional)</span></label>
                      <div class="col-md-8 col-12">
                        <input type="text" class="form-control" placeholder="Phone" id="phone" required>
                      </div>
                    </div>
                    <!-- row -->
                    <div class="mb-3 row">
                      <label for="location" class="col-sm-4 col-form-label
                          form-label">Location</label>

                      <div class="col-md-8 col-12">
                        <select class="form-select" id="location">
                            <option selected>Select Country</option>
                            <option value="1">India</option>
                            <option value="2">UK</option>
                            <option value="3">USA</option>
                          </select>
                      </div>
                    </div>
                    <!-- row -->
                    <div class="mb-3 row">
                      <label for="addressLine" class="col-sm-4 col-form-label
                          form-label">Address line 1</label>


                      <div class="col-md-8 col-12">
                        <input type="text" class="form-control" placeholder="placeholder" id="addressLine" required>
                      </div>
                    </div>
                    <!-- row -->
                    <div class="mb-3 row">
                      <label for="addressLineTwo" class="col-sm-4
                          col-form-label form-label">Address line 2</label>
                      <div class="col-md-8 col-12">
                        <input type="text" class="form-control" placeholder="placeholder" id="addressLineTwo" required>
                      </div>
                    </div>
                    <!-- row -->
                    <div class="row align-items-center">
                      <label for="zipcode" class="col-sm-4 col-form-label
                          form-label">Zip code <i data-feather="info"
                            class="me-2 icon-xs"></i></label>

                      <div class="col-md-8 col-12">
                        <input type="text" class="form-control" placeholder="placeholder" id="zipcode" required>
                      </div>
                      <div class="offset-md-4 col-md-8 mt-4">
                        <button type="submit" class="btn btn-primary"> Save
                            Changes</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="row mb-8">
          <div class="col-xl-3 col-lg-4 col-md-12 col-12">
            <div class="mb-4 mb-lg-0">
              <h4 class="mb-1">Email Setting</h4>
              <p class="mb-0 fs-5 text-muted">Add an email settings to profile </p>
            </div>

          </div>

          <div class="col-xl-9 col-lg-8 col-md-12 col-12">
            <!-- card -->
            <div class="card" id="edit">
              <!-- card body -->
              <div class="card-body">
                <div class="mb-6">
                  <h4 class="mb-1">Email</h4>

                </div>
                <form>
                  <!-- row -->
                  <div class="mb-3 row">
                    <!-- label -->
                    <label for="newEmailAddress" class="col-sm-4
                        col-form-label form-label">New email</label>
                    <div class="col-md-8 col-12">
                      <!-- input -->
                      <input type="email" class="form-control" placeholder="Enter your email address" id="newEmailAddress" required>
                    </div>
                    <!-- button -->
                    <div class="offset-md-4 col-md-8 col-12 mt-3">
                      <button type="submit" class="btn btn-primary">Save
                          Changes</button>
                    </div>
                  </div>
                </form>

                <div class="mb-6 mt-6">
                  <h4 class="mb-1">Change your password</h4>

                </div>
                <form>
                  <!-- row -->
                  <div class="mb-3 row">
                    <label for="currentPassword" class="col-sm-4
                        col-form-label form-label">Current password</label>

                    <div class="col-md-8 col-12">
                      <input type="password" class="form-control" placeholder="Enter Current password" id="currentPassword" required>
                    </div>
                  </div>
                  <!-- row -->
                  <div class="mb-3 row">
                    <label for="currentNewPassword" class="col-sm-4
                        col-form-label form-label">New password</label>

                    <div class="col-md-8 col-12">
                      <input type="password" class="form-control" placeholder="Enter New password" id="currentNewPassword" required>
                    </div>
                  </div>
                  <!-- row -->
                  <div class="row align-items-center">
                    <label for="confirmNewpassword" class="col-sm-4
                        col-form-label form-label">Confirm new password</label>
                    <div class="col-md-8 col-12 mb-2 mb-lg-0">
                      <input type="password" class="form-control" placeholder="Confirm new password" id="confirmNewpassword" required>
                    </div>
                    <!-- list -->
                    <div class="offset-md-4 col-md-8 col-12 mt-4">
                      <h6 class="mb-1">Password requirements:</h6>
                      <p>Ensure that these requirements are met:</p>
                      <ul>
                        <li> Minimum 8 characters long the more, the better</li>
                        <li>At least one lowercase character</li>
                        <li>At least one uppercase character</li>
                        <li>At least one number, symbol, or whitespace character
                        </li>
                      </ul>
                      <button type="submit" class="btn btn-primary">Save
                          Changes</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>

        <div class="row mb-8">
          <div class="col-xl-3 col-lg-4 col-md-12 col-12">
            <div class="mb-4 mb-lg-0">
              <h4 class="mb-1">Preferences</h4>
              <p class="mb-0 fs-5 text-muted">Configure your preferences </p>
            </div>

          </div>

          <div class="col-xl-9 col-lg-8 col-md-12 col-12">
            <div class="card" id="preferences">
              <div class="card-body">
                <div class="mb-6">
                  <h4 class="mb-1">Preferences</h4>

                </div>
                <form>
                  <!-- row -->
                  <div class="mb-3 row">
                    <label for="langauge" class="col-sm-4 col-form-label
                        form-label">Langauge</label>

                    <div class="col-md-8 col-12">
                      <select class="form-select" id="langauge">
                          <option selected>English</option>
                          <option value="1">Hindi</option>
                          <option value="2">Spanish</option>
                          <option value="3">Arabic </option>
                        </select>
                    </div>
                  </div>
                  <!-- row -->
                  <div class="mb-3 row">
                    <label for="timeZone" class="col-sm-4 col-form-label
                        form-label">Time Zone</label>

                    <div class="col-md-8 col-12">
                      <select class="form-select" id="timeZone">
                          <option selected>GMT +5.30</option>
                          <option value="1">GMT +5.30</option>
                          <option value="2">GMT +5.30</option>
                          <option value="3">GMT +5.30 </option>
                        </select>
                    </div>
                  </div>
                  <!-- row -->
                  <div class="mb-3 row">
                    <label for="dateFormat" class="col-sm-4 col-form-label
                        form-label">Date Format</label>

                    <div class="col-md-8 col-12">
                      <select class="form-select" id="dateFormat">
                          <option selected>No Preference</option>
                          <option value="Preference">Preference</option>
                        </select>
                    </div>
                  </div>

                  <!-- row -->
                  <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label form-label">Default</label>
                    <div class="col-md-8 col-12">
                      <div class="form-check custom-radio
                          form-check-inline">
                        <input type="radio" id="customRadioInlineOn" name="customRadioInline" class="form-check-input">
                        <label class="form-check-label" for="customRadioInlineOn">On
                          </label>
                      </div>
                      <div class="form-check custom-radio
                          form-check-inline">
                        <input type="radio" id="customRadioInlineOff" name="customRadioInline" class="form-check-input">
                        <label class="form-check-label" for="customRadioInlineOff">Off</label>
                      </div>
                    </div>
                  </div>
                  <!-- row -->
                  <div class="mb-3 row">
                    <div class="col-md-4 col-12">
                      <label class="mb-0 form-label">Choose option default</label>
                    </div>
                    <div class="col-md-8 col-12">
                      <div class="form-check  mb-2">
                        <input type="checkbox" class="form-check-input" id="customChecktellMe">
                        <label class="form-check-label" for="customChecktellMe">Tell me</label>
                      </div>
                      <div class="form-check  mb-2">
                        <input type="checkbox" class="form-check-input" id="customCheckemail">
                        <label class="form-check-label" for="customCheckemail">Open e-mail</label>
                      </div>
                      <div class="form-check  mb-2">
                        <input type="checkbox" class="form-check-input" id="customCheckemailTwo" checked>
                        <label class="form-check-label" for="customCheckemailTwo">Show default</label>
                      </div>
                    </div>
                    <div class="offset-md-4 col-md-8 col-12 mt-2">
                      <button type="submit" class="btn btn-primary">Save
                          Changes</button>
                    </div>
                  </div>


                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-8">
          <div class="col-xl-3 col-lg-4 col-md-12 col-12">
            <div class="mb-4 mb-lg-0">
              <h4 class="mb-1">Notifications</h4>
              <p class="mb-0 fs-5 text-muted">Change notification settings </p>
            </div>

          </div>

          <div class="col-xl-9 col-lg-8 col-md-12 col-12">
            <!-- card -->

            <div class="card">
              <!-- card body -->
              <div class="card-body">
                <div class="mb-6">
                  <h4 class="mb-1">Notification for email, mobile & Slack</h4>
                </div>
                <div class="mb-4">
                  <!-- alert -->
                  <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    To start using Slack for personal notifications, you should first connect Slack.
                    <button type="submit" class="btn-close" data-bs-dismiss="alert" aria-label="Close">

        </button>
                  </div>
                </div>
                <!-- table -->
                <div class="table-responsive mb-3">
                  <table class="table text-nowrap">
                    <thead class="table-light">
                      <tr>
                        <th class="w-75">Activity & Conversation</th>
                        <th><i data-feather="smartphone" class="icon-sm me-2"></i></th>
                        <th><i data-feather="slack" class="icon-sm me-2"></i></th>
                        <th><i data-feather="mail" class="icon-sm me-2"></i></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>

                        <td class="border-top-0">

                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckOne">
                            <label class="form-check-label" for="customCheckOne"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckTwo">
                            <label class="form-check-label" for="customCheckTwo"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckThree">
                            <label class="form-check-label" for="customCheckThree"></label>
                          </div>
                        </td>
                      </tr>
                      <tr>

                        <td class="border-top-0">
                          When a Files is shared with a team
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckFour">
                            <label class="form-check-label" for="customCheckFour"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <i data-feather="minus" class="text-muted icon-sm"></i>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckFive">
                            <label class="form-check-label" for="customCheckFive"></label>
                          </div>
                        </td>
                      </tr>

                      <tr>

                        <td class="border-top-0">
                          When someone requests access to my design
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckSix">
                            <label class="form-check-label" for="customCheckSix"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckSeven">
                            <label class="form-check-label" for="customCheckSeven"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckEight">
                            <label class="form-check-label" for="customCheckEight"></label>
                          </div>
                        </td>
                      </tr>
                      <tr>

                        <td class="border-top-0">
                          When someone comments in threads I’m following
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckNine">
                            <label class="form-check-label" for="customCheckNine"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckTen">
                            <label class="form-check-label" for="customCheckTen"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckEleven">
                            <label class="form-check-label" for="customCheckEleven"></label>
                          </div>
                        </td>
                      </tr>
                      <tr>

                        <td class="border-top-0">
                          When someone @mentions me in any comments
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckTwelve">
                            <label class="form-check-label" for="customCheckTwelve"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <i class="text-muted icon-sm" data-feather="minus"></i>
                        </td>
                        <td class="border-top-0">
                          <i class="text-muted icon-sm" data-feather="minus"></i>
                        </td>
                      </tr>

                    </tbody>
                  </table>
                </div>
                <div class="table-responsive mb-3">
                  <table class="table text-nowrap">
                    <thead class="table-light">
                      <tr>
                        <th class="w-75">Project activity activity</th>
                        <th><i data-feather="smartphone" class="me-2 icon-sm"></i></th>
                        <th><i data-feather="slack" class="me-2 icon-sm"></i></th>
                        <th><i data-feather="mail" class="me-2 icon-sm"></i></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>

                        <td class="border-top-0">
                          When someone adds me to a project
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckThirteen">
                            <label class="form-check-label" for="customCheckThirteen"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <i class="text-muted icon-sm" data-feather="minus"></i>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckFourteen">
                            <label class="form-check-label" for="customCheckFourteen"></label>
                          </div>
                        </td>
                      </tr>


                    </tbody>
                  </table>
                </div>
                <div class="table-responsive">
                  <table class="table mb-0 text-nowrap">
                    <thead class="table-light">
                      <tr>
                        <th class="w-75">Team activity
                        </th>
                        <th><i data-feather="smartphone" class="me-2 icon-sm"></i></th>
                        <th><i data-feather="slack" class="me-2 icon-sm"></i></th>
                        <th><i data-feather="mail" class="me-2 icon-sm"></i></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>

                        <td class="border-top-0">
                          When my invitees sign up
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckSixteen">
                            <label class="form-check-label" for="customCheckSixteen"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckSeventeen">
                            <label class="form-check-label" for="customCheckSeventeen"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckEighteen">
                            <label class="form-check-label" for="customCheckEighteen"></label>
                          </div>
                        </td>
                      </tr>
                      <tr>

                        <td class="border-top-0">
                          When someone requests access to my team
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckNineteen">
                            <label class="form-check-label" for="customCheckNineteen"></label>
                          </div>
                        </td>
                        <td class="border-top-0">
                          <i data-feather="minus" class="text-muted icon-sm"></i>
                        </td>
                        <td class="border-top-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckTwenty">
                            <label class="form-check-label" for="customCheckTwenty"></label>
                          </div>
                        </td>
                      </tr>

                      <tr>

                        <td class="border-bottom-0">
                          When someone invites me to a team
                        </td>
                        <td class="border-bottom-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckTwentyone">
                            <label class="form-check-label" for="customCheckTwentyone"></label>
                          </div>
                        </td>
                        <td class="border-bottom-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckTwentytwo">
                            <label class="form-check-label" for="customCheckTwentytwo"></label>
                          </div>
                        </td>
                        <td class="border-bottom-0">
                          <div class="form-check ">
                            <input type="checkbox" class="form-check-input" id="customCheckTwentythree">
                            <label class="form-check-label" for="customCheckTwentythree"></label>
                          </div>
                        </td>
                      </tr>


                    </tbody>
                  </table>
                </div>
                <hr class="my-6">
                <div class="row">
                  <div class="col-xl-6 col-md-12 mb-3">
                    <label for="notification" class="form-label">When should
          we send you notifications?</label>
                    <select class="form-select" id="notification">
          <option selected>Always</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
                  </div>
                  <div class="col-xl-3 col-md-6 mb-3">
                    <label for="dailyDigest" class="form-label">Daily Digest
        </label>
                    <select class="form-select" id="dailyDigest">
          <option selected>Everyday</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
                  </div>
                  <div class="col-xl-3 col-md-6 mb-3">
                    <label for="time" class="form-label">Time</label>
                    <select class="form-select" id="time">
          <option selected>2PM
          </option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
                  </div>
                  <div class="col-xl-3 col-md-12 ">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                  </div>
                </div>


              </div>

            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-xl-3 col-lg-4 col-md-12 col-12">
            <div class="mb-4 mb-lg-0">
              <h4 class="mb-1">Delete Account</h4>
              <p class="mb-0 fs-5 text-muted">Easily set up social media accounts</p>
            </div>

          </div>

          <div class="col-xl-9 col-lg-8 col-md-12 col-12">
            <!-- card -->

            <div class="card mb-6">
              <!-- card body -->
              <div class="card-body">
                <div class="mb-6">
                  <h4 class="mb-1">Danger Zone </h4>

                </div>
                <div>
                  <!-- text -->
                  <p>Delete any and all content you have, such as articles, comments, your reading list or chat messages. Allow your username to become available to anyone.</p>
                  <a href="#" class="btn btn-danger">Delete Account</a>
                  <p class="small mb-0 mt-3">Feel free to contact with any <a href="#">dashui@example.com</a> questions.
                  </p>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Scripts -->
  <!-- Libs JS -->
<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../assets/libs/feather-icons/dist/feather.min.js"></script>
<script src="../assets/libs/prismjs/prism.js"></script>
<script src="../assets/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="../assets/libs/dropzone/dist/min/dropzone.min.js"></script>
<script src="../assets/libs/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
<script src="../assets/libs/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>




<!-- Theme JS -->
<script src="../assets/js/theme.min.js"></script>



</body>

</html>