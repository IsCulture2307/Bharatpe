.class public Landroidx/camera/core/impl/RestrictedCameraControl;
.super Landroidx/camera/core/impl/ForwardingCameraControl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/RestrictedCameraControl$CameraOperation;
    }
.end annotation


# instance fields
.field public final c:Landroidx/camera/core/impl/CameraControlInternal;

.field public volatile d:Z

.field public volatile e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraControlInternal;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/ForwardingCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->d:Z

    iput-object p1, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->c:Landroidx/camera/core/impl/CameraControlInternal;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/RestrictedCameraControl;->l([I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExposureCompensation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->c:Landroidx/camera/core/impl/CameraControlInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraControl;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final c(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/RestrictedCameraControl;->l([I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Zoom is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->c:Landroidx/camera/core/impl/CameraControlInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->c(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final h(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/RestrictedCameraControl;->l([I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Torch is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->c:Landroidx/camera/core/impl/CameraControlInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->h(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final k(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    new-instance v0, Landroidx/camera/core/FocusMeteringAction$Builder;

    invoke-direct {v0, p1}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/FocusMeteringAction;)V

    iget-object v1, p1, Landroidx/camera/core/FocusMeteringAction;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    filled-new-array {v3, v2}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/RestrictedCameraControl;->l([I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroidx/camera/core/FocusMeteringAction$Builder;->a(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p1, Landroidx/camera/core/FocusMeteringAction;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/camera/core/impl/RestrictedCameraControl;->l([I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroidx/camera/core/FocusMeteringAction$Builder;->a(I)V

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v1, p1, Landroidx/camera/core/FocusMeteringAction;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/camera/core/impl/RestrictedCameraControl;->l([I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/camera/core/FocusMeteringAction$Builder;->a(I)V

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p1, Landroidx/camera/core/FocusMeteringAction;

    invoke-direct {p1, v0}, Landroidx/camera/core/FocusMeteringAction;-><init>(Landroidx/camera/core/FocusMeteringAction$Builder;)V

    iget-object v1, p1, Landroidx/camera/core/FocusMeteringAction;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroidx/camera/core/FocusMeteringAction;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Landroidx/camera/core/FocusMeteringAction;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    new-instance p1, Landroidx/camera/core/FocusMeteringAction;

    invoke-direct {p1, v0}, Landroidx/camera/core/FocusMeteringAction;-><init>(Landroidx/camera/core/FocusMeteringAction$Builder;)V

    :goto_3
    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FocusMetering is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->c:Landroidx/camera/core/impl/CameraControlInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->k(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final varargs l([I)Z
    .locals 4

    iget-boolean v0, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/camera/core/impl/RestrictedCameraControl;->e:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
