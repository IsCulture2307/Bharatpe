.class public final synthetic Lg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/a;->a:I

    iput-object p2, p0, Lg/a;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lg/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/a;->a:I

    iget-boolean v1, p0, Lg/a;->b:Z

    iget-object v2, p0, Lg/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v0, v2, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d(Z)V

    return-void

    :pswitch_0
    check-cast v2, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->q(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsControllerCompat;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->g(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :pswitch_1
    check-cast v2, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    invoke-interface {v2, v1}, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;->a(Z)V

    return-void

    :pswitch_2
    check-cast v2, Landroidx/camera/camera2/interop/Camera2CameraControl;

    iget-boolean v0, v2, Landroidx/camera/camera2/interop/Camera2CameraControl;->a:Z

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, v2, Landroidx/camera/camera2/interop/Camera2CameraControl;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v2, Landroidx/camera/camera2/interop/Camera2CameraControl;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroidx/camera/camera2/interop/Camera2CameraControl;->c:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/camera/camera2/internal/c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/camera/camera2/internal/c;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;I)V

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v3, v2, Landroidx/camera/camera2/interop/Camera2CameraControl;->b:Z

    goto :goto_1

    :cond_2
    iget-object v0, v2, Landroidx/camera/camera2/interop/Camera2CameraControl;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_3

    const-string v1, "The camera control has became inactive."

    invoke-static {v1, v0}, La/a/a/e/a/k;->D(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    const/4 v0, 0x0

    iput-object v0, v2, Landroidx/camera/camera2/interop/Camera2CameraControl;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
