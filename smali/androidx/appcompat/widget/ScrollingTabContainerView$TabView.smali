.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/app/ActionBar$Tab;

.field public b:Landroidx/appcompat/widget/AppCompatTextView;

.field public c:Landroid/view/View;


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->a:Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->b()V

    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->c:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->c:Landroid/view/View;

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->c()V

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->d()V

    const/16 v1, 0x8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v1, v4, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->a()V

    :goto_1
    invoke-static {p0, v2}, Landroidx/appcompat/widget/TooltipCompat$Api26Impl;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method
