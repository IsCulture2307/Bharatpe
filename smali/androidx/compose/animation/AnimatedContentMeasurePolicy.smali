.class final Landroidx/compose/animation/AnimatedContentMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/animation/AnimatedContentMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "animation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->a:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Landroidx/compose/ui/layout/Placeable;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ge v10, v6, :cond_2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->d()Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    if-eqz v15, :cond_0

    move-object v12, v14

    check-cast v12, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    :cond_0
    if-eqz v12, :cond_1

    iget-object v12, v12, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-ne v12, v11, :cond_1

    invoke-interface {v13, v2, v3}, Landroidx/compose/ui/layout/Measurable;->O(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->a:I

    iget v11, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-static {v8, v11}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    move-result-wide v11

    aput-object v7, v5, v10

    move-wide v7, v11

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    move v10, v9

    :goto_1
    if-ge v10, v6, :cond_4

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    aget-object v14, v5, v10

    if-nez v14, :cond_3

    invoke-interface {v13, v2, v3}, Landroidx/compose/ui/layout/Measurable;->O(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v13

    aput-object v13, v5, v10

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->g1()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x20

    shr-long v1, v7, v1

    long-to-int v1, v1

    goto :goto_6

    :cond_5
    if-nez v4, :cond_6

    move-object v1, v12

    goto :goto_5

    :cond_6
    aget-object v1, v5, v9

    add-int/lit8 v2, v4, -0x1

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_8

    iget v3, v1, Landroidx/compose/ui/layout/Placeable;->a:I

    goto :goto_2

    :cond_8
    move v3, v9

    :goto_2
    new-instance v6, Lkotlin/ranges/IntRange;

    invoke-direct {v6, v11, v2, v11}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->i()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v2

    :cond_9
    :goto_3
    iget-boolean v6, v2, Lkotlin/ranges/IntProgressionIterator;->c:Z

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Lkotlin/ranges/IntProgressionIterator;->a()I

    move-result v6

    aget-object v6, v5, v6

    if-eqz v6, :cond_a

    iget v10, v6, Landroidx/compose/ui/layout/Placeable;->a:I

    goto :goto_4

    :cond_a
    move v10, v9

    :goto_4
    if-ge v3, v10, :cond_9

    move-object v1, v6

    move v3, v10

    goto :goto_3

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->a:I

    goto :goto_6

    :cond_c
    move v1, v9

    :goto_6
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->g1()Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v7

    long-to-int v9, v2

    goto :goto_b

    :cond_d
    if-nez v4, :cond_e

    goto :goto_a

    :cond_e
    aget-object v12, v5, v9

    sub-int/2addr v4, v11

    if-nez v4, :cond_f

    goto :goto_a

    :cond_f
    if-eqz v12, :cond_10

    iget v2, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_7

    :cond_10
    move v2, v9

    :goto_7
    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-direct {v3, v11, v4, v11}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->i()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v3

    :cond_11
    :goto_8
    iget-boolean v4, v3, Lkotlin/ranges/IntProgressionIterator;->c:Z

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lkotlin/ranges/IntProgressionIterator;->a()I

    move-result v4

    aget-object v4, v5, v4

    if-eqz v4, :cond_12

    iget v6, v4, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_9

    :cond_12
    move v6, v9

    :goto_9
    if-ge v2, v6, :cond_11

    move-object v12, v4

    move v2, v6

    goto :goto_8

    :cond_13
    :goto_a
    if-eqz v12, :cond_14

    iget v9, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    :cond_14
    :goto_b
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->g1()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v1, v9}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    move-result-wide v2

    iget-object v4, v0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->a:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    iget-object v4, v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v6, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_15
    new-instance v2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;

    invoke-direct {v2, v5, v0, v1, v9}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;-><init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/AnimatedContentMeasurePolicy;II)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v4, v1, v9, v3, v2}, Landroidx/compose/ui/layout/MeasureScope;->z1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method

.method public final e(Landroidx/compose/ui/node/NodeCoordinator;Ljava/util/List;I)I
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->K(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_2

    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->K(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    move-object p1, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    return v0
.end method

.method public final g(Landroidx/compose/ui/node/NodeCoordinator;Ljava/util/List;I)I
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e0(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_2

    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e0(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    move-object p1, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    return v0
.end method

.method public final h(Landroidx/compose/ui/node/NodeCoordinator;Ljava/util/List;I)I
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->L(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_2

    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->L(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    move-object p1, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    return v0
.end method

.method public final i(Landroidx/compose/ui/node/NodeCoordinator;Ljava/util/List;I)I
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->t(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_2

    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->t(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    move-object p1, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    return v0
.end method
