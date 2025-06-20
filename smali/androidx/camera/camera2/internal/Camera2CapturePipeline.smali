.class Landroidx/camera/camera2/internal/Camera2CapturePipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;,
        Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;,
        Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;,
        Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;,
        Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;,
        Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Set;

.field public static final i:Ljava/util/Set;

.field public static final j:Ljava/util/Set;

.field public static final k:Ljava/util/Set;


# instance fields
.field public final a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final b:Landroidx/camera/camera2/internal/compat/workaround/UseTorchAsFlash;

.field public final c:Z

.field public final d:Landroidx/camera/core/impl/Quirks;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Z

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->PASSIVE_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->PASSIVE_NOT_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    sget-object v3, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_NOT_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->h:Ljava/util/Set;

    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->i:Ljava/util/Set;

    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->j:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->k:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Landroidx/camera/core/impl/Quirks;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->g:I

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->f:Z

    iput-object p4, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->d:Landroidx/camera/core/impl/Quirks;

    new-instance p1, Landroidx/camera/camera2/internal/compat/workaround/UseTorchAsFlash;

    invoke-direct {p1, p3}, Landroidx/camera/camera2/internal/compat/workaround/UseTorchAsFlash;-><init>(Landroidx/camera/core/impl/Quirks;)V

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->b:Landroidx/camera/camera2/internal/compat/workaround/UseTorchAsFlash;

    new-instance p1, Landroidx/camera/camera2/internal/m;

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/internal/m;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;I)V

    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/workaround/FlashAvailabilityChecker;->a(Landroidx/camera/camera2/internal/m;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->c:Z

    return-void
.end method

.method public static a(Landroid/hardware/camera2/TotalCaptureResult;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->i()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v2

    sget-object v3, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->i()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v2

    sget-object v3, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    if-eq v2, v3, :cond_2

    sget-object v2, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->h:Ljava/util/Set;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->h()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-eqz p1, :cond_6

    if-nez v3, :cond_5

    sget-object p1, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->k:Ljava/util/Set;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->f()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v0

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v4

    goto :goto_4

    :cond_6
    if-nez v3, :cond_5

    sget-object p1, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->j:Ljava/util/Set;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->f()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :goto_4
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    sget-object p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->i:Ljava/util/Set;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->d()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_5
    move p0, v4

    goto :goto_6

    :cond_8
    move p0, v0

    :goto_6
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->f()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->h()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->d()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x3

    const-string v3, "Camera2CapturePipeline"

    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->d(ILjava/lang/String;)Z

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    move v0, v4

    :cond_9
    return v0
.end method

.method public static b(Landroid/hardware/camera2/TotalCaptureResult;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :cond_1
    return v1

    :cond_2
    if-eqz p0, :cond_3

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method
