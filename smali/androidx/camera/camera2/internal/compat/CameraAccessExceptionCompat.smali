.class public Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat$AccessError;
    }
.end annotation


# static fields
.field public static final CAMERA_CHARACTERISTICS_CREATION_ERROR:I = 0x2712

.field public static final CAMERA_DEPRECATED_HAL:I = 0x3e8
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final CAMERA_UNAVAILABLE_DO_NOT_DISTURB:I = 0x2711

.field static final COMPAT_ERRORS:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CAMERAS_IN_USE:I = 0x5

.field static final PLATFORM_ERRORS:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

.field private final mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x3

    aput-object v1, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/Integer;

    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x2712

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->COMPAT_ERRORS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->PLATFORM_ERRORS:Ljava/util/Set;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, p1, v1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CameraAccessException;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraAccessException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-void
.end method

.method private static getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getProblemString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s (%d): %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultMessage(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2711

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2712

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "Failed to create CameraCharacteristics."

    return-object p0

    :cond_1
    const-string p0, "Some API 28 devices cannot access the camera when the device is in \"Do Not Disturb\" mode. The camera will not be accessible until \"Do Not Disturb\" mode is disabled."

    return-object p0

    :cond_2
    const-string p0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object p0

    :cond_3
    const-string p0, "The camera device is in use already"

    return-object p0

    :cond_4
    const-string p0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object p0

    :cond_5
    const-string p0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object p0

    :cond_6
    const-string p0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object p0
.end method

.method private static getProblemString(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2711

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2712

    if-eq p0, v0, :cond_0

    const-string p0, "<UNKNOWN ERROR>"

    goto :goto_0

    :cond_0
    const-string p0, "CAMERA_CHARACTERISTICS_CREATION_ERROR"

    goto :goto_0

    :cond_1
    const-string p0, "CAMERA_UNAVAILABLE_DO_NOT_DISTURB"

    goto :goto_0

    :cond_2
    const-string p0, "CAMERA_DEPRECATED_HAL"

    goto :goto_0

    :cond_3
    const-string p0, "MAX_CAMERAS_IN_USE"

    goto :goto_0

    :cond_4
    const-string p0, "CAMERA_IN_USE"

    goto :goto_0

    :cond_5
    const-string p0, "CAMERA_ERROR"

    goto :goto_0

    :cond_6
    const-string p0, "CAMERA_DISCONNECTED"

    goto :goto_0

    :cond_7
    const-string p0, "CAMERA_DISABLED"

    :goto_0
    return-object p0
.end method

.method public static toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraAccessException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cameraAccessException should not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mReason:I

    return v0
.end method

.method public toCameraAccessException()Landroid/hardware/camera2/CameraAccessException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->mCameraAccessException:Landroid/hardware/camera2/CameraAccessException;

    return-object v0
.end method
