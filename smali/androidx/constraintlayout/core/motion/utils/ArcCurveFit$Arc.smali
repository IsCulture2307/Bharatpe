.class Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arc"
.end annotation


# static fields
.field public static final s:[D


# instance fields
.field public a:[D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field public o:D

.field public p:D

.field public q:Z

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [D

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->s:[D

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->j:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->p:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->o:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->n:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v4, v2

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    if-eqz v2, :cond_0

    neg-double v0, v0

    :cond_0
    mul-double/2addr v0, v4

    return-wide v0
.end method

.method public final b()D
    .locals 6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->j:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->p:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->o:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->n:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    div-double/2addr v4, v0

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    if-eqz v0, :cond_0

    neg-double v0, v2

    mul-double/2addr v0, v4

    goto :goto_0

    :cond_0
    mul-double v0, v2, v4

    :goto_0
    return-wide v0
.end method

.method public final c(D)D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final d(D)D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final e()D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->j:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->o:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final f()D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->p:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final g(D)V
    .locals 6

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    sub-double/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    sub-double v0, p1, v0

    :goto_0
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i:D

    mul-double/2addr v0, p1

    const-wide/16 p1, 0x0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->a:[D

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    int-to-double v2, p2

    sub-double/2addr v0, v2

    aget-wide v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-wide v4, p1, p2

    sub-double/2addr v4, v2

    mul-double/2addr v4, v0

    add-double p1, v4, v2

    :goto_1
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->o:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->p:D

    return-void
.end method
