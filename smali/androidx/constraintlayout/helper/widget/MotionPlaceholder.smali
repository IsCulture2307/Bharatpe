.class public Landroidx/constraintlayout/helper/widget/MotionPlaceholder;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "SourceFile"


# virtual methods
.method public final n(Landroid/util/AttributeSet;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->n(Landroid/util/AttributeSet;)V

    new-instance p1, Landroidx/constraintlayout/core/widgets/Placeholder;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->t()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionPlaceholder;->u(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    return-void
.end method

.method public final s(Landroidx/constraintlayout/core/widgets/Helper;Landroid/util/SparseArray;)V
    .locals 0

    return-void
.end method

.method public final u(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->W(IIII)V

    iget p2, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->E0:I

    iget p1, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->F0:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method
