.class Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;
.super Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# direct methods
.method public static g(Ljava/lang/RuntimeException;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_enableShutterSound"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public final b(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->c(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->g(Ljava/lang/RuntimeException;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    const/16 v1, 0x2711

    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_0
    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->g(Ljava/lang/RuntimeException;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    const/16 p3, 0x2711

    invoke-direct {p2, p3, p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :cond_0
    throw p1

    :goto_1
    throw p1

    :goto_2
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    move-result-object p1

    throw p1
.end method
