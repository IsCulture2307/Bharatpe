.class public Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

.field public final c:Ljava/lang/String;

.field public d:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->d:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsApi28Impl;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->b:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->b:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    :goto_0
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->b:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    check-cast v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->b:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    check-cast v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->d:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;

    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    invoke-direct {v2, v0, v1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;)V

    iput-object v2, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->d:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StreamConfigurationMap is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->d:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    return-object v0
.end method

.method public final c()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->b:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    check-cast v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;->a:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method
