.class public Lkotlin/ranges/LongProgression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/LongProgression$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlin/ranges/LongProgression;",
        "",
        "",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/ranges/LongProgression;->a:J

    cmp-long v0, p1, p3

    const-wide/16 v1, 0x1

    if-ltz v0, :cond_0

    goto :goto_3

    :cond_0
    rem-long v3, p3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    add-long/2addr v3, v1

    :goto_0
    rem-long/2addr p1, v1

    cmp-long v0, p1, v5

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    add-long/2addr p1, v1

    :goto_1
    sub-long/2addr v3, p1

    rem-long/2addr v3, v1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-long/2addr v3, v1

    :goto_2
    sub-long/2addr p3, v3

    :goto_3
    iput-wide p3, p0, Lkotlin/ranges/LongProgression;->b:J

    iput-wide v1, p0, Lkotlin/ranges/LongProgression;->c:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lkotlin/ranges/LongProgression;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/LongProgression;

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Lkotlin/ranges/LongProgression;

    iget-wide v0, p1, Lkotlin/ranges/LongProgression;->a:J

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->a:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->b:J

    iget-wide v2, p1, Lkotlin/ranges/LongProgression;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->c:J

    iget-wide v2, p1, Lkotlin/ranges/LongProgression;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 9

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    int-to-long v0, v0

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->a:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    mul-long/2addr v2, v0

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->b:J

    ushr-long v7, v5, v4

    xor-long/2addr v5, v7

    add-long/2addr v2, v5

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->c:J

    ushr-long v4, v0, v4

    xor-long/2addr v0, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 7

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-wide v3, p0, Lkotlin/ranges/LongProgression;->b:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->a:J

    if-lez v0, :cond_0

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 8

    new-instance v7, Lkotlin/ranges/LongProgressionIterator;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->a:J

    iget-wide v3, p0, Lkotlin/ranges/LongProgression;->b:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->c:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/ranges/LongProgressionIterator;-><init>(JJJ)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->c:J

    cmp-long v0, v2, v0

    const-string v1, " step "

    iget-wide v4, p0, Lkotlin/ranges/LongProgression;->b:J

    iget-wide v6, p0, Lkotlin/ranges/LongProgression;->a:J

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " downTo "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    return-object v0
.end method
