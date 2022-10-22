<?php
require_once('./include_path.php');
require_once(DIR_MODULES . 'helpers.php');
?>

<section class="container mt-4 w-25">
    <!-- For debug only, remove this and replace with redirecting to home page in production -->
    <?php
    include_once(DIR_VIEWS . 'msg.php');
    session_start();
    if (!empty($_SESSION['username'])) {
        echo ('Username hiện tại là ' . $_SESSION['username']);
    }
    ?>

    <form action="/controllers/login.php" method="POST">
        <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text" class="form-control" name="username" value="<?php echo getURLParameter('username') ?>">
            <div class="form-text">Username không dài hơn 256 ký tự</div>
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" class="form-control" name="password">
        </div>

        <input type="submit" class="btn btn-primary" value="Đăng nhập">
    </form>
</section>