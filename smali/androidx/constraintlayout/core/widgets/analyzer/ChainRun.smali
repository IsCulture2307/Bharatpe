.class public Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "SourceFile"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 4

    invoke-direct {p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    :goto_0
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_1

    :cond_1
    if-ne p2, v1, :cond_2

    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_5

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez p2, :cond_3

    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_3

    :cond_3
    if-ne p2, v1, :cond_4

    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v0, :cond_7

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    goto :goto_4

    :cond_7
    if-ne v0, v1, :cond_6

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    goto :goto_4

    :cond_8
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez p1, :cond_9

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Z

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_9

    invoke-static {v2, v1}, La/a/a/e/a/k;->f(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :cond_9
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    goto :goto_5

    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:I

    :goto_5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->l:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_56

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v3, :cond_0

    goto/16 :goto_33

    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_1

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    sub-int/2addr v4, v6

    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    const/16 v10, 0x8

    if-ge v8, v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    if-ne v11, v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v9

    :cond_3
    add-int/lit8 v11, v7, -0x1

    move v12, v11

    :goto_2
    if-ltz v12, :cond_5

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    if-ne v13, v10, :cond_4

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_4
    move v9, v12

    :cond_5
    const/4 v12, 0x0

    :goto_3
    const/4 v14, 0x2

    if-ge v12, v14, :cond_14

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v5, v7, :cond_11

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v15, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v21, v6

    iget v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    if-ne v6, v10, :cond_6

    move/from16 v23, v8

    goto/16 :goto_a

    :cond_6
    add-int/lit8 v17, v17, 0x1

    if-lez v5, :cond_7

    if-lt v5, v8, :cond_7

    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v14, v6

    :cond_7
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v10, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    move/from16 v22, v10

    iget-object v10, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v23, v8

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v8, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_b

    iget v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v6, :cond_9

    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v10, :cond_9

    return-void

    :cond_9
    const/4 v10, 0x1

    if-ne v6, v10, :cond_a

    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v6, :cond_a

    return-void

    :cond_a
    move/from16 v24, v8

    goto :goto_7

    :cond_b
    move/from16 v24, v8

    const/4 v10, 0x1

    iget v8, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    if-ne v8, v10, :cond_c

    if-nez v12, :cond_c

    iget v10, v6, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    add-int/lit8 v16, v16, 0x1

    :goto_6
    const/16 v24, 0x1

    goto :goto_8

    :cond_c
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v6, :cond_d

    move/from16 v10, v22

    goto :goto_6

    :cond_d
    :goto_7
    move/from16 v10, v22

    :goto_8
    if-nez v24, :cond_e

    add-int/lit8 v16, v16, 0x1

    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[F

    iget v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    aget v6, v6, v8

    const/4 v8, 0x0

    cmpl-float v10, v6, v8

    if-ltz v10, :cond_f

    add-float v18, v18, v6

    goto :goto_9

    :cond_e
    add-int/2addr v14, v10

    :cond_f
    :goto_9
    if-ge v5, v11, :cond_10

    if-ge v5, v9, :cond_10

    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v6, v6

    add-int/2addr v14, v6

    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v21

    move/from16 v8, v23

    const/16 v10, 0x8

    goto/16 :goto_4

    :cond_11
    move-object/from16 v21, v6

    move/from16 v23, v8

    if-lt v14, v4, :cond_13

    if-nez v16, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v21

    move/from16 v8, v23

    const/16 v10, 0x8

    goto/16 :goto_3

    :cond_13
    :goto_b
    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_c

    :cond_14
    move-object/from16 v21, v6

    move/from16 v23, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_c
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    if-eqz v3, :cond_15

    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    if-le v14, v4, :cond_17

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v3, :cond_16

    sub-int v10, v14, v4

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v10, v2

    float-to-int v8, v10

    add-int/2addr v1, v8

    goto :goto_d

    :cond_16
    sub-int v10, v14, v4

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v10, v2

    float-to-int v8, v10

    sub-int/2addr v1, v8

    :cond_17
    :goto_d
    if-lez v5, :cond_26

    sub-int v8, v4, v14

    int-to-float v8, v8

    int-to-float v10, v5

    div-float v10, v8, v10

    add-float/2addr v10, v2

    float-to-int v10, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    if-ge v12, v7, :cond_1f

    move-object/from16 v15, v21

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move/from16 v16, v10

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v21, v14

    iget v14, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    move/from16 v22, v1

    const/16 v1, 0x8

    if-ne v14, v1, :cond_19

    :cond_18
    move/from16 v24, v3

    move/from16 v25, v8

    goto :goto_12

    :cond_19
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v14, :cond_18

    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v14, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v14, :cond_18

    const/4 v14, 0x0

    cmpl-float v20, v18, v14

    if-lez v20, :cond_1a

    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[F

    move/from16 v24, v3

    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    aget v3, v14, v3

    mul-float/2addr v3, v8

    div-float v3, v3, v18

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v3, v14

    float-to-int v3, v3

    goto :goto_f

    :cond_1a
    move/from16 v24, v3

    move/from16 v3, v16

    :goto_f
    iget v14, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v14, :cond_1b

    iget v14, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    goto :goto_10

    :cond_1b
    iget v14, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    :goto_10
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    move/from16 v25, v8

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1c

    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_11

    :cond_1c
    move v2, v3

    :goto_11
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v14, :cond_1d

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1d
    if-eq v2, v3, :cond_1e

    add-int/lit8 v13, v13, 0x1

    move v3, v2

    :cond_1e
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    :goto_12
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v16

    move/from16 v14, v21

    move/from16 v1, v22

    move/from16 v3, v24

    move/from16 v8, v25

    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v21, v15

    goto/16 :goto_e

    :cond_1f
    move/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v15, v21

    move/from16 v21, v14

    if-lez v13, :cond_24

    sub-int/2addr v5, v13

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_13
    if-ge v1, v7, :cond_23

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    const/16 v8, 0x8

    if-ne v3, v8, :cond_20

    move/from16 v8, v23

    goto :goto_14

    :cond_20
    move/from16 v8, v23

    if-lez v1, :cond_21

    if-lt v1, v8, :cond_21

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v14, v3

    :cond_21
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    add-int/2addr v14, v3

    if-ge v1, v11, :cond_22

    if-ge v1, v9, :cond_22

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v2, v2

    add-int/2addr v14, v2

    :cond_22
    :goto_14
    add-int/lit8 v1, v1, 0x1

    move/from16 v23, v8

    goto :goto_13

    :cond_23
    move/from16 v8, v23

    goto :goto_15

    :cond_24
    move/from16 v8, v23

    move/from16 v14, v21

    :goto_15
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    if-nez v13, :cond_25

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->l:I

    goto :goto_16

    :cond_25
    const/4 v1, 0x0

    goto :goto_16

    :cond_26
    move/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v15, v21

    move/from16 v8, v23

    const/4 v1, 0x0

    const/4 v2, 0x2

    move/from16 v21, v14

    :goto_16
    if-le v14, v4, :cond_27

    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->l:I

    :cond_27
    if-lez v6, :cond_28

    if-nez v5, :cond_28

    if-ne v8, v9, :cond_28

    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->l:I

    :cond_28
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->l:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    if-le v6, v3, :cond_29

    sub-int/2addr v4, v14

    sub-int/2addr v6, v3

    div-int/2addr v4, v6

    goto :goto_17

    :cond_29
    if-ne v6, v3, :cond_2a

    sub-int/2addr v4, v14

    const/4 v2, 0x2

    div-int/2addr v4, v2

    goto :goto_17

    :cond_2a
    move v4, v1

    :goto_17
    if-lez v5, :cond_2b

    move v4, v1

    :cond_2b
    move v5, v1

    move/from16 v1, v22

    :goto_18
    if-ge v5, v7, :cond_56

    if-eqz v24, :cond_2c

    add-int/lit8 v2, v5, 0x1

    sub-int v2, v7, v2

    goto :goto_19

    :cond_2c
    move v2, v5

    :goto_19
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/16 v12, 0x8

    if-ne v3, v12, :cond_2d

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_20

    :cond_2d
    if-lez v5, :cond_2f

    if-eqz v24, :cond_2e

    sub-int/2addr v1, v4

    goto :goto_1a

    :cond_2e
    add-int/2addr v1, v4

    :cond_2f
    :goto_1a
    if-lez v5, :cond_31

    if-lt v5, v8, :cond_31

    if-eqz v24, :cond_30

    iget v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    sub-int/2addr v1, v3

    goto :goto_1b

    :cond_30
    iget v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v1, v3

    :cond_31
    :goto_1b
    if-eqz v24, :cond_32

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_1c

    :cond_32
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_1c
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_33

    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_33

    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    :cond_33
    if-eqz v24, :cond_34

    sub-int/2addr v1, v12

    goto :goto_1d

    :cond_34
    add-int/2addr v1, v12

    :goto_1d
    if-eqz v24, :cond_35

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_1e
    const/4 v3, 0x1

    goto :goto_1f

    :cond_35
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_1e

    :goto_1f
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    if-ge v5, v11, :cond_37

    if-ge v5, v9, :cond_37

    if-eqz v24, :cond_36

    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v2, v2

    sub-int/2addr v1, v2

    goto :goto_20

    :cond_36
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v2, v2

    add-int/2addr v1, v2

    :cond_37
    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_38
    if-nez v2, :cond_45

    sub-int/2addr v4, v14

    const/4 v2, 0x1

    add-int/2addr v6, v2

    div-int/2addr v4, v6

    if-lez v5, :cond_39

    move v4, v1

    :cond_39
    move v5, v1

    move/from16 v1, v22

    :goto_21
    if-ge v5, v7, :cond_56

    if-eqz v24, :cond_3a

    add-int/lit8 v2, v5, 0x1

    sub-int v2, v7, v2

    goto :goto_22

    :cond_3a
    move v2, v5

    :goto_22
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/16 v12, 0x8

    if-ne v3, v12, :cond_3b

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_28

    :cond_3b
    if-eqz v24, :cond_3c

    sub-int/2addr v1, v4

    goto :goto_23

    :cond_3c
    add-int/2addr v1, v4

    :goto_23
    if-lez v5, :cond_3e

    if-lt v5, v8, :cond_3e

    if-eqz v24, :cond_3d

    iget v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    sub-int/2addr v1, v3

    goto :goto_24

    :cond_3d
    iget v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v1, v3

    :cond_3e
    :goto_24
    if-eqz v24, :cond_3f

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_25

    :cond_3f
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_25
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_40

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    const/4 v13, 0x1

    if-ne v2, v13, :cond_40

    iget v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_40
    if-eqz v24, :cond_41

    sub-int/2addr v1, v12

    goto :goto_26

    :cond_41
    add-int/2addr v1, v12

    :goto_26
    if-eqz v24, :cond_42

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_27

    :cond_42
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_27
    if-ge v5, v11, :cond_44

    if-ge v5, v9, :cond_44

    if-eqz v24, :cond_43

    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v2, v2

    sub-int/2addr v1, v2

    goto :goto_28

    :cond_43
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v2, v2

    add-int/2addr v1, v2

    :cond_44
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_45
    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v2, :cond_46

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    goto :goto_29

    :cond_46
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    :goto_29
    if-eqz v24, :cond_47

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    :cond_47
    sub-int/2addr v4, v14

    int-to-float v3, v4

    mul-float/2addr v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v3, v2

    float-to-int v2, v3

    if-ltz v2, :cond_48

    if-lez v5, :cond_49

    :cond_48
    move v2, v1

    :cond_49
    if-eqz v24, :cond_4a

    sub-int v2, v22, v2

    goto :goto_2a

    :cond_4a
    add-int v2, v22, v2

    :goto_2a
    move v5, v1

    :goto_2b
    if-ge v5, v7, :cond_56

    if-eqz v24, :cond_4b

    add-int/lit8 v1, v5, 0x1

    sub-int v1, v7, v1

    goto :goto_2c

    :cond_4b
    move v1, v5

    :goto_2c
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/16 v10, 0x8

    if-ne v3, v10, :cond_4c

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    const/4 v13, 0x1

    goto :goto_32

    :cond_4c
    if-lez v5, :cond_4e

    if-lt v5, v8, :cond_4e

    if-eqz v24, :cond_4d

    iget v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    sub-int/2addr v2, v3

    goto :goto_2d

    :cond_4d
    iget v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v2, v3

    :cond_4e
    :goto_2d
    if-eqz v24, :cond_4f

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_2e

    :cond_4f
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_2e
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_50

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    const/4 v13, 0x1

    if-ne v1, v13, :cond_51

    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    goto :goto_2f

    :cond_50
    const/4 v13, 0x1

    :cond_51
    :goto_2f
    if-eqz v24, :cond_52

    sub-int/2addr v2, v12

    goto :goto_30

    :cond_52
    add-int/2addr v2, v12

    :goto_30
    if-eqz v24, :cond_53

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_31

    :cond_53
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_31
    if-ge v5, v11, :cond_55

    if-ge v5, v9, :cond_55

    if-eqz v24, :cond_54

    iget v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v1, v1

    sub-int/2addr v2, v1

    goto :goto_32

    :cond_54
    iget v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v1, v1

    add-int/2addr v2, v1

    :cond_55
    :goto_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_56
    :goto_33
    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-nez v1, :cond_5

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-static {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v6, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    :cond_3
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v0

    :cond_4
    if-eqz v1, :cond_9

    neg-int v0, v0

    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    goto :goto_1

    :cond_5
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-static {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {v6, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    :cond_7
    invoke-static {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v0

    :cond_8
    if-eqz v1, :cond_9

    neg-int v0, v0

    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    :cond_9
    :goto_1
    iput-object p0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()J
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    move-result-wide v6

    add-long/2addr v6, v2

    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final k()Z
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChainRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v1, :cond_0

    const-string v1, "horizontal : "

    goto :goto_0

    :cond_0
    const-string v1, "vertical : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
