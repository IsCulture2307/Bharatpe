.class public Lso/plotline/insights/FlowViews/i;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public a:Landroid/media/MediaPlayer;

.field public final b:Ljava/lang/Boolean;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/ref/WeakReference;

.field public h:Ljava/lang/ref/WeakReference;

.field public i:Ljava/lang/ref/WeakReference;

.field public j:Ljava/lang/ref/WeakReference;

.field public k:Landroid/net/Uri;

.field public l:Landroid/media/MediaPlayer$OnInfoListener;

.field public final m:Ljava/lang/Boolean;

.field public final n:Lso/plotline/insights/FlowViews/Stories/h;

.field public o:Landroid/os/Handler;

.field public p:Lso/plotline/insights/FlowViews/i$a;

.field public q:I

.field public r:I

.field public final s:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Boolean;Lso/plotline/insights/FlowViews/Stories/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lso/plotline/insights/FlowViews/i;->e:I

    iput p1, p0, Lso/plotline/insights/FlowViews/i;->f:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lso/plotline/insights/FlowViews/i;->m:Ljava/lang/Boolean;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lso/plotline/insights/FlowViews/i;->s:Ljava/util/HashSet;

    iput-object p2, p0, Lso/plotline/insights/FlowViews/i;->b:Ljava/lang/Boolean;

    invoke-static {}, Lso/plotline/insights/FlowViews/d;->m()I

    move-result p1

    iput p1, p0, Lso/plotline/insights/FlowViews/i;->d:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lso/plotline/insights/FlowViews/i;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p3, p0, Lso/plotline/insights/FlowViews/i;->m:Ljava/lang/Boolean;

    iput-object p4, p0, Lso/plotline/insights/FlowViews/i;->n:Lso/plotline/insights/FlowViews/Stories/h;

    return-void
.end method

.method private setVolume(I)V
    .locals 4

    rsub-int/lit8 p1, p1, 0x64

    if-lez p1, :cond_0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p1, v2

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lso/plotline/insights/FlowViews/i;->setVolume(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lso/plotline/insights/FlowViews/i;->setVolume(I)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lso/plotline/insights/FlowViews/i;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lso/plotline/insights/FlowViews/i;->e:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lso/plotline/insights/FlowViews/i;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lso/plotline/insights/FlowViews/i;->f:I

    mul-int/2addr v1, v2

    iget v3, p0, Lso/plotline/insights/FlowViews/i;->e:I

    div-int/2addr v1, v3

    iput v1, p0, Lso/plotline/insights/FlowViews/i;->d:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v1, v2, :cond_1

    iget p1, p0, Lso/plotline/insights/FlowViews/i;->d:I

    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lso/plotline/insights/FlowViews/i;->e:I

    if-lez v0, :cond_2

    iget v2, p0, Lso/plotline/insights/FlowViews/i;->f:I

    if-lez v2, :cond_2

    if-lez v1, :cond_2

    mul-int/2addr v2, v1

    div-int/2addr v2, v0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :try_start_0
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->k:Landroid/net/Uri;

    invoke-virtual {p1, p3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->l:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :cond_0
    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    new-instance p2, Lc0/n;

    invoke-direct {p2, p0}, Lc0/n;-><init>(Lso/plotline/insights/FlowViews/i;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance p2, Lc0/o;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lc0/o;-><init>(Lso/plotline/insights/FlowViews/i;I)V

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lso/plotline/insights/FlowViews/i;->g:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p1

    iget-object p1, p1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    iget-object p2, p0, Lso/plotline/insights/FlowViews/i;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p1, Lso/plotline/insights/ActivityCallback;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance p2, Lc0/o;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lc0/o;-><init>(Lso/plotline/insights/FlowViews/i;I)V

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lso/plotline/insights/FlowViews/i;->h:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p1

    iget-object p1, p1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    iget-object p2, p0, Lso/plotline/insights/FlowViews/i;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lso/plotline/insights/ActivityCallback;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->g:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p1

    iget-object p1, p1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lso/plotline/insights/ActivityCallback;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p1

    iget-object p1, p1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object p1, p1, Lso/plotline/insights/ActivityCallback;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p1

    iget-object p1, p1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object p1, p1, Lso/plotline/insights/ActivityCallback;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->j:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p1

    iget-object p1, p1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object p1, p1, Lso/plotline/insights/ActivityCallback;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_3
    iget-object p1, p0, Lso/plotline/insights/FlowViews/i;->o:Landroid/os/Handler;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lso/plotline/insights/FlowViews/i;->p:Lso/plotline/insights/FlowViews/i$a;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setHeightVideo(I)V
    .locals 0

    iput p1, p0, Lso/plotline/insights/FlowViews/i;->f:I

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lso/plotline/insights/FlowViews/i;->l:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lso/plotline/insights/FlowViews/i;->k:Landroid/net/Uri;

    return-void
.end method

.method public setWidthVideo(I)V
    .locals 0

    iput p1, p0, Lso/plotline/insights/FlowViews/i;->e:I

    return-void
.end method
