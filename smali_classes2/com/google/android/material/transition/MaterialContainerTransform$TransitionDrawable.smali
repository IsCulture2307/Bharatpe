.class final Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransitionDrawable"
.end annotation


# instance fields
.field public final A:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field public final B:Lcom/google/android/material/transition/FadeModeEvaluator;

.field public final C:Lcom/google/android/material/transition/FitModeEvaluator;

.field public final D:Z

.field public final E:Landroid/graphics/Paint;

.field public final F:Landroid/graphics/Path;

.field public G:Lcom/google/android/material/transition/FadeModeResult;

.field public H:Lcom/google/android/material/transition/FitModeResult;

.field public I:Landroid/graphics/RectF;

.field public J:F

.field public K:F

.field public L:F

.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/RectF;

.field public final c:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final d:F

.field public final e:Landroid/view/View;

.field public final f:Landroid/graphics/RectF;

.field public final g:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final h:F

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/Paint;

.field public final n:Lcom/google/android/material/transition/MaskEvaluator;

.field public final o:Landroid/graphics/PathMeasure;

.field public final p:F

.field public final q:[F

.field public final r:Z

.field public final s:F

.field public final t:F

.field public final u:Z

.field public final v:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final w:Landroid/graphics/RectF;

.field public final x:Landroid/graphics/RectF;

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIZZLcom/google/android/material/transition/FadeModeEvaluator;Lcom/google/android/material/transition/FitModeEvaluator;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->i:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->j:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->k:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->l:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->m:Landroid/graphics/Paint;

    new-instance v7, Lcom/google/android/material/transition/MaskEvaluator;

    invoke-direct {v7}, Lcom/google/android/material/transition/MaskEvaluator;-><init>()V

    iput-object v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->n:Lcom/google/android/material/transition/MaskEvaluator;

    const/4 v7, 0x2

    new-array v7, v7, [F

    iput-object v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->q:[F

    new-instance v8, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v8, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->v:Lcom/google/android/material/shape/MaterialShapeDrawable;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->E:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->F:Landroid/graphics/Path;

    move-object v10, p2

    iput-object v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->a:Landroid/view/View;

    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->b:Landroid/graphics/RectF;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->c:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v11, p5

    iput v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->d:F

    move-object/from16 v11, p6

    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->e:Landroid/view/View;

    iput-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->f:Landroid/graphics/RectF;

    move-object/from16 v11, p8

    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v11, p9

    iput v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->h:F

    move/from16 v11, p11

    iput-boolean v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->r:Z

    move/from16 v11, p12

    iput-boolean v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->u:Z

    move-object/from16 v11, p13

    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/FadeModeEvaluator;

    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/FitModeEvaluator;

    move-object/from16 v11, p15

    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->A:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->D:Z

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "window"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v10, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->s:F

    iget v10, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->t:F

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->n(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q()V

    iput-boolean v11, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->w:Z

    const v3, -0x777778

    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p(I)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->w:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->x:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->y:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->z:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v8, p1

    invoke-virtual {p1, v2, v3, v5, v4}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, v2, v11}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->o:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iput v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->p:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v7, v11

    const/4 v2, 0x1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v7, v2

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lcom/google/android/material/transition/TransitionUtils;->a:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object p1, v1

    move p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, p10

    move/from16 p7, p10

    move-object/from16 p8, v7

    invoke-direct/range {p1 .. p8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->d(F)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->y:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->H:Lcom/google/android/material/transition/FitModeResult;

    iget v5, v0, Lcom/google/android/material/transition/FitModeResult;->b:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->G:Lcom/google/android/material/transition/FadeModeResult;

    iget v6, v0, Lcom/google/android/material/transition/FadeModeResult;->b:I

    new-instance v7, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/TransitionUtils;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->j:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->w:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->H:Lcom/google/android/material/transition/FitModeResult;

    iget v5, v0, Lcom/google/android/material/transition/FitModeResult;->a:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->G:Lcom/google/android/material/transition/FadeModeResult;

    iget v6, v0, Lcom/google/android/material/transition/FadeModeResult;->a:I

    new-instance v7, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/TransitionUtils;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final d(F)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v9, p1

    iput v9, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->L:F

    iget-boolean v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->r:Z

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    invoke-static {v10, v2, v9}, Lcom/google/android/material/transition/TransitionUtils;->c(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2, v10, v9}, Lcom/google/android/material/transition/TransitionUtils;->c(FFF)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->p:F

    mul-float v2, v1, v9

    iget-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->o:Landroid/graphics/PathMeasure;

    iget-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->q:[F

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v2, 0x0

    aget v6, v4, v2

    const/4 v7, 0x1

    aget v8, v4, v7

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v11

    if-gtz v12, :cond_2

    cmpg-float v13, v9, v10

    if-gez v13, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v12, v6

    move v13, v8

    goto :goto_4

    :cond_2
    :goto_2
    if-lez v12, :cond_3

    sub-float v12, v9, v11

    const v13, 0x3c23d700    # 0.00999999f

    div-float/2addr v12, v13

    const v13, 0x3f7d70a4    # 0.99f

    goto :goto_3

    :cond_3
    const v13, 0x3c23d70a    # 0.01f

    div-float v12, v9, v13

    const/high16 v14, -0x40800000    # -1.0f

    mul-float/2addr v12, v14

    :goto_3
    mul-float/2addr v1, v13

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v1, v4, v2

    aget v2, v4, v7

    invoke-static {v6, v1, v12, v6}, La/a/a/e/a/k;->a(FFFF)F

    move-result v6

    invoke-static {v8, v2, v12, v8}, La/a/a/e/a/k;->a(FFFF)F

    move-result v8

    goto :goto_1

    :goto_4
    iget-object v14, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->A:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    iget-object v1, v14, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, v14, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/FitModeEvaluator;

    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    move/from16 v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/material/transition/FitModeEvaluator;->a(FFFFFFF)Lcom/google/android/material/transition/FitModeResult;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->H:Lcom/google/android/material/transition/FitModeResult;

    iget v2, v1, Lcom/google/android/material/transition/FitModeResult;->c:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    sub-float v3, v12, v2

    add-float/2addr v2, v12

    iget v1, v1, Lcom/google/android/material/transition/FitModeResult;->d:F

    add-float/2addr v1, v13

    iget-object v8, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->w:Landroid/graphics/RectF;

    invoke-virtual {v8, v3, v13, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->H:Lcom/google/android/material/transition/FitModeResult;

    iget v2, v1, Lcom/google/android/material/transition/FitModeResult;->e:F

    div-float/2addr v2, v7

    sub-float v3, v12, v2

    add-float/2addr v2, v12

    iget v1, v1, Lcom/google/android/material/transition/FitModeResult;->f:F

    add-float/2addr v1, v13

    iget-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->y:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v13, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->x:Landroid/graphics/RectF;

    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v13, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->z:Landroid/graphics/RectF;

    invoke-virtual {v13, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v14, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->c:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v2, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->H:Lcom/google/android/material/transition/FitModeResult;

    iget-object v15, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/FitModeEvaluator;

    invoke-interface {v15, v1}, Lcom/google/android/material/transition/FitModeEvaluator;->b(Lcom/google/android/material/transition/FitModeResult;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object v6, v12

    goto :goto_5

    :cond_4
    move-object v6, v13

    :goto_5
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move/from16 v5, p1

    move-object v7, v6

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/TransitionUtils;->d(FFFFFZ)F

    move-result v1

    if-eqz v16, :cond_5

    goto :goto_6

    :cond_5
    sub-float v1, v11, v1

    :goto_6
    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->H:Lcom/google/android/material/transition/FitModeResult;

    invoke-interface {v15, v7, v1, v2}, Lcom/google/android/material/transition/FitModeEvaluator;->c(Landroid/graphics/RectF;FLcom/google/android/material/transition/FitModeResult;)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v12, Landroid/graphics/RectF;->left:F

    iget v3, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v12, Landroid/graphics/RectF;->top:F

    iget v4, v13, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v12, Landroid/graphics/RectF;->right:F

    iget v5, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->I:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->n:Lcom/google/android/material/transition/MaskEvaluator;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v14, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->d:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v4, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->a:F

    iget v5, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->b:F

    cmpg-float v1, v9, v4

    iget-object v15, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->c:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-gez v1, :cond_6

    move-object v1, v15

    goto/16 :goto_9

    :cond_6
    cmpl-float v1, v9, v5

    iget-object v6, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-lez v1, :cond_7

    move-object v1, v6

    goto :goto_9

    :cond_7
    new-instance v3, Lcom/google/android/material/transition/TransitionUtils$1;

    move-object v1, v3

    move-object v2, v8

    move-object v11, v3

    move-object v3, v13

    move-object/from16 v21, v6

    move/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/TransitionUtils$1;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    iget-object v1, v15, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    invoke-interface {v1, v8}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    move-result v1

    cmpl-float v1, v1, v10

    iget-object v2, v15, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    iget-object v3, v15, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    iget-object v4, v15, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    if-nez v1, :cond_9

    invoke-interface {v4, v8}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    move-result v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_9

    invoke-interface {v3, v8}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    move-result v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_9

    invoke-interface {v2, v8}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    move-result v1

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v6, v21

    goto :goto_8

    :cond_9
    :goto_7
    move-object v6, v15

    :goto_8
    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->f()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    move-object/from16 v5, v21

    iget-object v6, v5, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    iget-object v8, v15, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v11, v8, v6}, Lcom/google/android/material/transition/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->e:Lcom/google/android/material/shape/CornerSize;

    iget-object v6, v5, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v11, v4, v6}, Lcom/google/android/material/transition/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->f:Lcom/google/android/material/shape/CornerSize;

    iget-object v4, v5, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v11, v2, v4}, Lcom/google/android/material/transition/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->h:Lcom/google/android/material/shape/CornerSize;

    iget-object v2, v5, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v11, v3, v2}, Lcom/google/android/material/transition/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->g:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    :goto_9
    iput-object v1, v7, Lcom/google/android/material/transition/MaskEvaluator;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v15, v7, Lcom/google/android/material/transition/MaskEvaluator;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    const/high16 v17, 0x3f800000    # 1.0f

    iget-object v2, v7, Lcom/google/android/material/transition/MaskEvaluator;->b:Landroid/graphics/Path;

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v12

    move-object/from16 v20, v2

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    iget-object v15, v7, Lcom/google/android/material/transition/MaskEvaluator;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v1, v7, Lcom/google/android/material/transition/MaskEvaluator;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/high16 v17, 0x3f800000    # 1.0f

    iget-object v3, v7, Lcom/google/android/material/transition/MaskEvaluator;->c:Landroid/graphics/Path;

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v13

    move-object/from16 v20, v3

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    iget-object v1, v7, Lcom/google/android/material/transition/MaskEvaluator;->a:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->d:F

    iget v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->h:F

    invoke-static {v1, v2, v9}, Lcom/google/android/material/transition/TransitionUtils;->c(FFF)F

    move-result v1

    iput v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->J:F

    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->I:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->s:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->I:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->t:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->J:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->K:F

    iget-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->l:Landroid/graphics/Paint;

    const/high16 v5, 0x2d000000

    invoke-virtual {v4, v3, v1, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, v14, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->a:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v2, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/FadeModeEvaluator;

    invoke-interface {v3, v9, v2, v1}, Lcom/google/android/material/transition/FadeModeEvaluator;->a(FFF)Lcom/google/android/material/transition/FadeModeResult;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->G:Lcom/google/android/material/transition/FadeModeResult;

    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->j:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->G:Lcom/google/android/material/transition/FadeModeResult;

    iget v2, v2, Lcom/google/android/material/transition/FadeModeResult;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_a
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->G:Lcom/google/android/material/transition/FadeModeResult;

    iget v2, v2, Lcom/google/android/material/transition/FadeModeResult;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->D:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->u:Z

    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->n:Lcom/google/android/material/transition/MaskEvaluator;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->J:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v3, Lcom/google/android/material/transition/MaskEvaluator;->a:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-le v2, v5, :cond_3

    iget-object v2, v3, Lcom/google/android/material/transition/MaskEvaluator;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->I:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->e(Landroid/graphics/RectF;)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->l:Landroid/graphics/Paint;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->I:Landroid/graphics/RectF;

    iget-object v2, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    invoke-interface {v2, v5}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    move-result v2

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->I:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, v2, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v2, v3, Lcom/google/android/material/transition/MaskEvaluator;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->v:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->I:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->J:F

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m(F)V

    iget v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->K:F

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(I)V

    iget-object v5, v3, Lcom/google/android/material/transition/MaskEvaluator;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v2, v3, Lcom/google/android/material/transition/MaskEvaluator;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->G:Lcom/google/android/material/transition/FadeModeResult;

    iget-boolean v2, v2, Lcom/google/android/material/transition/FadeModeResult;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->a(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->b(Landroid/graphics/Canvas;)V

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->F:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->L:F

    cmpl-float v3, v3, v4

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->E:Landroid/graphics/Paint;

    if-nez v3, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_6
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const v2, -0xff01

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->x:Landroid/graphics/RectF;

    const/16 v2, -0x100

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const v1, -0xff0100

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->z:Landroid/graphics/RectF;

    const v1, -0xff0001

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->y:Landroid/graphics/RectF;

    const v1, -0xffff01

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting alpha on is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting a color filter is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
