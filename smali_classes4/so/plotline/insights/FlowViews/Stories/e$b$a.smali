.class public Lso/plotline/insights/FlowViews/Stories/e$b$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lso/plotline/insights/FlowViews/Stories/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lso/plotline/insights/FlowViews/Stories/e$b;


# direct methods
.method public constructor <init>(Lso/plotline/insights/FlowViews/Stories/e$b;)V
    .locals 0

    iput-object p1, p0, Lso/plotline/insights/FlowViews/Stories/e$b$a;->a:Lso/plotline/insights/FlowViews/Stories/e$b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lso/plotline/insights/FlowViews/Stories/e$b$a;->a:Lso/plotline/insights/FlowViews/Stories/e$b;

    const/high16 v4, 0x42c80000    # 100.0f

    if-lez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    cmpl-float p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, v3, Lso/plotline/insights/FlowViews/Stories/e$b;->c:Lso/plotline/insights/FlowViews/Stories/e;

    iget-object p1, p1, Lso/plotline/insights/FlowViews/Stories/e;->P:Lso/plotline/insights/FlowViews/Stories/d;

    invoke-interface {p1}, Lso/plotline/insights/FlowViews/Stories/d;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, v3, Lso/plotline/insights/FlowViews/Stories/e$b;->c:Lso/plotline/insights/FlowViews/Stories/e;

    iget-object p1, p1, Lso/plotline/insights/FlowViews/Stories/e;->P:Lso/plotline/insights/FlowViews/Stories/d;

    invoke-interface {p1}, Lso/plotline/insights/FlowViews/Stories/d;->e()V

    :goto_0
    return v1

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    cmpl-float p1, p2, v2

    if-lez p1, :cond_2

    iget-object p1, v3, Lso/plotline/insights/FlowViews/Stories/e$b;->c:Lso/plotline/insights/FlowViews/Stories/e;

    iget-object p1, p1, Lso/plotline/insights/FlowViews/Stories/e;->P:Lso/plotline/insights/FlowViews/Stories/d;

    invoke-interface {p1}, Lso/plotline/insights/FlowViews/Stories/d;->j()V

    goto :goto_1

    :cond_2
    iget-object p1, v3, Lso/plotline/insights/FlowViews/Stories/e$b;->c:Lso/plotline/insights/FlowViews/Stories/e;

    iget-object p1, p1, Lso/plotline/insights/FlowViews/Stories/e;->P:Lso/plotline/insights/FlowViews/Stories/d;

    invoke-interface {p1}, Lso/plotline/insights/FlowViews/Stories/d;->g()V

    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lso/plotline/insights/FlowViews/Stories/e$b$a;->a:Lso/plotline/insights/FlowViews/Stories/e$b;

    iget-object v0, p1, Lso/plotline/insights/FlowViews/Stories/e$b;->c:Lso/plotline/insights/FlowViews/Stories/e;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lso/plotline/insights/FlowViews/Stories/e;->Q:Ljava/lang/Boolean;

    iget-object v0, p1, Lso/plotline/insights/FlowViews/Stories/e$b;->c:Lso/plotline/insights/FlowViews/Stories/e;

    iget-object p1, p1, Lso/plotline/insights/FlowViews/Stories/e$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "VIDEO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lso/plotline/insights/FlowViews/Stories/e;->n0:Lso/plotline/insights/FlowViews/i;

    iget-object v1, p1, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lso/plotline/insights/FlowViews/i;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object p1, v0, Lso/plotline/insights/FlowViews/Stories/e;->P:Lso/plotline/insights/FlowViews/Stories/d;

    invoke-interface {p1}, Lso/plotline/insights/FlowViews/Stories/d;->i()V

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lso/plotline/insights/FlowViews/Stories/e$b$a;->a:Lso/plotline/insights/FlowViews/Stories/e$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lso/plotline/insights/FlowViews/Stories/e$b;->b:Ljava/lang/String;

    iget-object v0, v0, Lso/plotline/insights/FlowViews/Stories/e$b;->c:Lso/plotline/insights/FlowViews/Stories/e;

    if-eqz v1, :cond_0

    const-string v2, "IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lso/plotline/insights/FlowViews/Stories/e;->X:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lso/plotline/insights/FlowViews/Stories/e;->Z:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    iget-object v0, v0, Lso/plotline/insights/FlowViews/Stories/e;->P:Lso/plotline/insights/FlowViews/Stories/d;

    invoke-interface {v0}, Lso/plotline/insights/FlowViews/Stories/d;->h()V

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lso/plotline/insights/FlowViews/Stories/e;->P:Lso/plotline/insights/FlowViews/Stories/d;

    invoke-interface {v0}, Lso/plotline/insights/FlowViews/Stories/d;->d()V

    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
