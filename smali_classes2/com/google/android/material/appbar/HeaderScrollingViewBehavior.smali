.class abstract Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(I)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->c:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->d:Landroid/graphics/Rect;

    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->e:I

    return-void
.end method


# virtual methods
.method public final A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p1 .. p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->C(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v8, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v7

    iget-object v12, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v12, v4, v5, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->i()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v12, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->j()I

    move-result v4

    sub-int/2addr v5, v4

    iput v5, v12, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object v4, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    if-nez v3, :cond_1

    const v3, 0x800033

    :cond_1
    move v9, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v13, v4

    move/from16 v14, p3

    invoke-static/range {v9 .. v14}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget v3, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->f:I

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->D(Landroid/view/View;)F

    move-result v3

    iget v5, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->f:I

    int-to-float v6, v5

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v3, v2, v5}, Landroidx/core/math/MathUtils;->b(III)I

    move-result v2

    :goto_0
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    move-object/from16 v8, p2

    invoke-virtual {v8, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget v2, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->e:I

    goto :goto_1

    :cond_3
    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;I)V

    iput v2, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->e:I

    :goto_1
    return-void
.end method

.method public abstract C(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;
.end method

.method public D(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public E(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_5

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->C(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    if-lez p5, :cond_1

    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->k()I

    move-result v4

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr p5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->E(Landroid/view/View;)I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    instance-of v3, p0, Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;

    if-eqz v3, :cond_3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    sub-int/2addr p5, v2

    :goto_1
    if-ne v0, v1, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_2

    :cond_4
    const/high16 v0, -0x80000000

    :goto_2
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s(Landroid/view/View;III)V

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
