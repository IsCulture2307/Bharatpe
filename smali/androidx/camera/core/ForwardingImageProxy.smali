.class public abstract Landroidx/camera/core/ForwardingImageProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageProxy;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/camera/core/ImageProxy;

.field public final c:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->c:Ljava/util/HashSet;

    iput-object p1, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final B0()Landroid/media/Image;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->B0()Landroid/media/Image;

    move-result-object v0

    return-object v0
.end method

.method public M()[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->M()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ForwardingImageProxy;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->c()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/camera/core/ForwardingImageProxy;->c:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

    invoke-interface {v1, p0}, Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;->b(Landroidx/camera/core/ImageProxy;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->d()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->i()I

    move-result v0

    return v0
.end method

.method public q0()Landroidx/camera/core/ImageInfo;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->q0()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    return-object v0
.end method
