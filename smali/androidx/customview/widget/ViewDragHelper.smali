.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field public static final x:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public final m:F

.field public n:F

.field public o:I

.field public final p:I

.field public q:I

.field public final r:Landroid/widget/OverScroller;

.field public final s:Landroidx/customview/widget/ViewDragHelper$Callback;

.field public t:Landroid/view/View;

.field public u:Z

.field public final v:Landroid/view/ViewGroup;

.field public final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/customview/widget/ViewDragHelper$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->x:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    new-instance v0, Landroidx/customview/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ViewDragHelper$2;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->p:I

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->m:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Landroidx/customview/widget/ViewDragHelper;->x:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static k(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    if-lt p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-ge p2, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->b()V

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v2, v3, v1, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->i(Landroid/view/View;II)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->q(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    :goto_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->g(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->q(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(FFII)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final e(Landroid/view/View;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->c(Landroid/view/View;)I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->d()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p3, p2

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    move v0, v2

    :cond_5
    return v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    move v0, v2

    :cond_7
    return v0
.end method

.method public final f(I)V
    .locals 4

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aput v3, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    aput v3, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    aput v3, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aput v3, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    const/4 v3, 0x0

    aput v3, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aput v3, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    aput v3, v0, p1

    not-int p1, v2

    and-int/2addr p1, v1

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    :cond_0
    return-void
.end method

.method public final g(III)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    int-to-float p1, p2

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final h()Z
    .locals 9

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v4, v6

    if-eqz v5, :cond_0

    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    sget-object v8, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v6, :cond_1

    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    sget-object v8, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v5, v6, v3, v4}, Landroidx/customview/widget/ViewDragHelper$Callback;->i(Landroid/view/View;II)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v3, v5, :cond_4

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v4, v3, :cond_4

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    :goto_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final i(II)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(IIII)Z
    .locals 10

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    const/4 p1, 0x0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->q(I)V

    return p1

    :cond_0
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    float-to-int v0, v0

    iget v6, p0, Landroidx/customview/widget/ViewDragHelper;->m:F

    float-to-int v6, v6

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v0, :cond_1

    move p3, p1

    goto :goto_0

    :cond_1
    if-le v7, v6, :cond_3

    if-lez p3, :cond_2

    move p3, v6

    goto :goto_0

    :cond_2
    neg-int p3, v6

    :cond_3
    :goto_0
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    float-to-int v0, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v0, :cond_4

    :goto_1
    move p4, p1

    goto :goto_2

    :cond_4
    if-le v7, v6, :cond_6

    if-lez p4, :cond_5

    move p4, v6

    goto :goto_2

    :cond_5
    neg-int p1, v6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v8, v6, v7

    add-int v9, p1, v0

    if-eqz p3, :cond_7

    int-to-float p1, v6

    int-to-float v6, v8

    :goto_3
    div-float/2addr p1, v6

    goto :goto_4

    :cond_7
    int-to-float p1, p1

    int-to-float v6, v9

    goto :goto_3

    :goto_4
    if-eqz p4, :cond_8

    int-to-float v0, v7

    int-to-float v6, v8

    :goto_5
    div-float/2addr v0, v6

    goto :goto_6

    :cond_8
    int-to-float v0, v0

    int-to-float v6, v9

    goto :goto_5

    :goto_6
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v6, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->c(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, v4, p3, p2}, Landroidx/customview/widget/ViewDragHelper;->g(III)I

    move-result p2

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper$Callback;->d()I

    move-result p3

    invoke-virtual {p0, v5, p4, p3}, Landroidx/customview/widget/ViewDragHelper;->g(III)I

    move-result p3

    int-to-float p2, p2

    mul-float/2addr p2, p1

    int-to-float p1, p3

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    float-to-int v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->q(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final l(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->b()V

    :cond_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    if-eqz v0, :cond_16

    const/4 v4, 0x1

    if-eq v0, v4, :cond_14

    const/4 v5, 0x2

    if-eq v0, v5, :cond_b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    const/4 v5, 0x5

    if-eq v0, v5, :cond_7

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v1, v4, :cond_6

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->i(II)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v5, v3}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->m()V

    :cond_6
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->f(I)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v2, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->o(FFI)V

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->i(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget p1, p1, v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_17

    invoke-virtual {v3, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->f(I)V

    goto/16 :goto_5

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-static {v2, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->k(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    goto/16 :goto_5

    :cond_9
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne p1, v4, :cond_a

    iput-boolean v4, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->j(Landroid/view/View;FF)V

    iput-boolean v2, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne p1, v4, :cond_a

    invoke-virtual {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->q(I)V

    :cond_a
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->b()V

    goto/16 :goto_5

    :cond_b
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v0, v4, :cond_10

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    shl-int v2, v4, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    aget v2, v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aget v2, v2, v4

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz v1, :cond_c

    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v3, v7, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->a(Landroid/view/View;I)I

    move-result v2

    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    sub-int v5, v2, v5

    sget-object v8, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_c
    if-eqz v0, :cond_d

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v3, v5, v4}, Landroidx/customview/widget/ViewDragHelper$Callback;->b(Landroid/view/View;I)I

    move-result v4

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    sub-int v6, v4, v6

    sget-object v7, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_d
    if-nez v1, :cond_e

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v3, v0, v2, v4}, Landroidx/customview/widget/ViewDragHelper$Callback;->i(Landroid/view/View;II)V

    :cond_f
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_13

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    shl-int v5, v4, v1

    and-int/2addr v3, v5

    if-eqz v3, :cond_12

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    aget v6, v6, v1

    sub-float v6, v3, v6

    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    invoke-virtual {p0, v6, v7, v1}, Landroidx/customview/widget/ViewDragHelper;->n(FFI)V

    iget v8, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v8, v4, :cond_11

    goto :goto_4

    :cond_11
    float-to-int v3, v3

    float-to-int v5, v5

    invoke-virtual {p0, v3, v5}, Landroidx/customview/widget/ViewDragHelper;->i(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->e(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_4

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    :goto_4
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/MotionEvent;)V

    goto :goto_5

    :cond_14
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne p1, v4, :cond_15

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->m()V

    :cond_15
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->b()V

    goto :goto_5

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v4, v1

    invoke-virtual {p0, v2, v4}, Landroidx/customview/widget/ViewDragHelper;->i(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->o(FFI)V

    invoke-virtual {p0, v2, p1}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v0, v0, p1

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    invoke-virtual {v3, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->f(I)V

    :cond_17
    :goto_5
    return-void
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->m:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v3, v2

    const/4 v4, 0x0

    if-gez v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    cmpl-float v2, v3, v1

    if-lez v2, :cond_2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    neg-float v0, v1

    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v3, v5, v3

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    cmpl-float v3, v5, v1

    if-lez v3, :cond_5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    neg-float v1, v1

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v2, v3, v0, v4}, Landroidx/customview/widget/ViewDragHelper$Callback;->j(Landroid/view/View;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v2, v1, :cond_6

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->q(I)V

    :cond_6
    return-void
.end method

.method public final n(FFI)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->d(FFII)Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->d(FFII)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p1, v0, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->e(II)V

    :cond_3
    return-void
.end method

.method public final o(FFI)V
    .locals 10

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    new-array v3, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [F

    new-array v6, v2, [F

    new-array v7, v2, [I

    new-array v8, v2, [I

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    array-length v9, v0

    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    array-length v9, v0

    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    array-length v9, v0

    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    array-length v9, v0

    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    array-length v9, v0

    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    array-length v9, v0

    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    array-length v9, v0

    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    iput-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    iput-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    iput-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    iput-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    iput-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    :cond_2
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    aput p1, v2, p3

    aput p1, v0, p3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aput p2, v2, p3

    aput p2, v0, p3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    if-ge p1, v3, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    add-int/2addr v3, v5

    if-ge p2, v3, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    sub-int/2addr v3, v5

    if-le p1, v3, :cond_5

    or-int/lit8 v1, v1, 0x2

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    or-int/lit8 v1, v1, 0x8

    :cond_6
    aput v1, v0, p3

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    shl-int p2, v4, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    return-void
.end method

.method public final p(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->h(I)V

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final r(II)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->j(IIII)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->b()V

    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    if-eqz v2, :cond_e

    if-eq v2, v4, :cond_d

    if-eq v2, v5, :cond_5

    const/4 v8, 0x3

    if-eq v2, v8, :cond_d

    const/4 v8, 0x5

    if-eq v2, v8, :cond_3

    const/4 v5, 0x6

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->f(I)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v0, v8, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->o(FFI)V

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez v3, :cond_4

    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v1, v1, v2

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    invoke-virtual {v7, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->f(I)V

    goto/16 :goto_3

    :cond_4
    if-ne v3, v5, :cond_10

    float-to-int v3, v8

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->i(II)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-ne v1, v3, :cond_10

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    goto/16 :goto_3

    :cond_5
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    if-eqz v2, :cond_10

    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    if-nez v2, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_c

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v8, v0, Landroidx/customview/widget/ViewDragHelper;->k:I

    shl-int v9, v4, v5

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    aget v10, v10, v5

    sub-float v10, v8, v10

    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    aget v11, v11, v5

    sub-float v11, v9, v11

    float-to-int v8, v8

    float-to-int v9, v9

    invoke-virtual {v0, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->i(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v0, v8, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->e(Landroid/view/View;FF)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_1

    :cond_7
    move v9, v6

    :goto_1
    if-eqz v9, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    float-to-int v13, v10

    add-int/2addr v13, v12

    invoke-virtual {v7, v8, v13}, Landroidx/customview/widget/ViewDragHelper$Callback;->a(Landroid/view/View;I)I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    float-to-int v15, v11

    add-int/2addr v15, v14

    invoke-virtual {v7, v8, v15}, Landroidx/customview/widget/ViewDragHelper$Callback;->b(Landroid/view/View;I)I

    move-result v15

    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->c(Landroid/view/View;)I

    move-result v16

    invoke-virtual {v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->d()I

    move-result v17

    if-eqz v16, :cond_8

    if-lez v16, :cond_9

    if-ne v13, v12, :cond_9

    :cond_8
    if-eqz v17, :cond_c

    if-lez v17, :cond_9

    if-ne v15, v14, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v10, v11, v5}, Landroidx/customview/widget/ViewDragHelper;->n(FFI)V

    iget v10, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v10, v4, :cond_a

    goto :goto_2

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v0, v8, v5}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    :goto_2
    invoke-virtual/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->b()V

    goto :goto_3

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->o(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->i(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-ne v2, v3, :cond_f

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v3, v5, :cond_f

    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ViewDragHelper;->u(Landroid/view/View;I)Z

    :cond_f
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v2, v2, v1

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    invoke-virtual {v7, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->f(I)V

    :cond_10
    :goto_3
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v1, v4, :cond_11

    goto :goto_4

    :cond_11
    move v4, v6

    :goto_4
    return v4
.end method

.method public final t(Landroid/view/View;II)Z
    .locals 0

    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->j(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    :cond_0
    return p1
.end method

.method public final u(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->k(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->c(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
