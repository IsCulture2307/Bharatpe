.class public interface abstract Landroidx/camera/core/impl/CameraCaptureResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;
    }
.end annotation


# virtual methods
.method public abstract a()Landroidx/camera/core/impl/TagBundle;
.end method

.method public b(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraCaptureResult;->e()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->d(Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;)V

    return-void
.end method

.method public abstract c()J
.end method

.method public abstract d()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;
.end method

.method public abstract e()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
.end method

.method public abstract f()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
.end method

.method public g()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->g()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract h()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
.end method
