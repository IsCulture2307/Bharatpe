.class public final Landroidx/compose/ui/geometry/RoundRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/geometry/RoundRect$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/geometry/RoundRect;",
        "",
        "Companion",
        "ui-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-wide v0, Landroidx/compose/ui/geometry/CornerRadius;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->b(J)F

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->c(J)F

    move-result v0

    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(FF)J

    return-void
.end method

.method public constructor <init>(FFFFJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    iput p2, p0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    iput p3, p0, Landroidx/compose/ui/geometry/RoundRect;->c:F

    iput p4, p0, Landroidx/compose/ui/geometry/RoundRect;->d:F

    iput-wide p5, p0, Landroidx/compose/ui/geometry/RoundRect;->e:J

    iput-wide p7, p0, Landroidx/compose/ui/geometry/RoundRect;->f:J

    iput-wide p9, p0, Landroidx/compose/ui/geometry/RoundRect;->g:J

    iput-wide p11, p0, Landroidx/compose/ui/geometry/RoundRect;->h:J

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->d:F

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final b()F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->c:F

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/geometry/RoundRect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/geometry/RoundRect;

    iget v1, p1, Landroidx/compose/ui/geometry/RoundRect;->a:F

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    iget v3, p1, Landroidx/compose/ui/geometry/RoundRect;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->c:F

    iget v3, p1, Landroidx/compose/ui/geometry/RoundRect;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->d:F

    iget v3, p1, Landroidx/compose/ui/geometry/RoundRect;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->e:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->f:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->f:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->g:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->g:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->h:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->h:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/b;->a(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/geometry/RoundRect;->c:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/b;->a(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/geometry/RoundRect;->d:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/b;->a(FII)I

    move-result v0

    sget v2, Landroidx/compose/ui/geometry/CornerRadius;->b:I

    iget-wide v2, p0, Landroidx/compose/ui/geometry/RoundRect;->e:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/animation/b;->d(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/ui/geometry/RoundRect;->f:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/animation/b;->d(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/ui/geometry/RoundRect;->g:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/animation/b;->d(JII)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/geometry/RoundRect;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    invoke-static {v1}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    invoke-static {v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/compose/ui/geometry/RoundRect;->c:F

    invoke-static {v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->d:F

    invoke-static {v1}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/geometry/RoundRect;->e:J

    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->f:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->a(JJ)Z

    move-result v5

    const/16 v6, 0x29

    const-string v7, "RoundRect(rect="

    iget-wide v8, p0, Landroidx/compose/ui/geometry/RoundRect;->g:J

    iget-wide v10, p0, Landroidx/compose/ui/geometry/RoundRect;->h:J

    if-eqz v5, :cond_1

    invoke-static {v3, v4, v8, v9}, Landroidx/compose/ui/geometry/CornerRadius;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->b(J)F

    move-result v3

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->c(J)F

    move-result v4

    cmpg-float v3, v3, v4

    if-nez v3, :cond_0

    const-string v3, ", radius="

    invoke-static {v7, v0, v3}, La/a/a/e/a/k;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->b(J)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, ", x="

    invoke-static {v7, v0, v3}, La/a/a/e/a/k;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->b(J)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->c(J)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v5, ", topLeft="

    invoke-static {v7, v0, v5}, La/a/a/e/a/k;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/CornerRadius;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
