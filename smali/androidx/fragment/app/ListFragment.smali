.class public Landroidx/fragment/app/ListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final P:Landroid/os/Handler;

.field public final Q:Ljava/lang/Runnable;

.field public final T:Landroid/widget/AdapterView$OnItemClickListener;

.field public X:Landroid/widget/ListAdapter;

.field public Y:Landroid/widget/ListView;

.field public Z:Landroid/view/View;

.field public n0:Landroid/view/View;

.field public o0:Landroid/view/View;

.field public p0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->P:Landroid/os/Handler;

    new-instance v0, Landroidx/fragment/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$1;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->Q:Ljava/lang/Runnable;

    new-instance v0, Landroidx/fragment/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$2;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->T:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final h1()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->Y:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->Y:Landroid/widget/ListView;

    goto :goto_1

    :cond_1
    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_2

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->Z:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->n0:Landroid/view/View;

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->Y:Landroid/widget/ListView;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->Z:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/ListFragment;->p0:Z

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->Y:Landroid/widget/ListView;

    iget-object v2, p0, Landroidx/fragment/app/ListFragment;->T:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->X:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->X:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->Y:Landroid/widget/ListView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v1, p0, Landroidx/fragment/app/ListFragment;->p0:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_6

    move v2, v0

    :cond_6
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/ListFragment;->n1(ZZ)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->n0:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/ListFragment;->n1(ZZ)V

    :cond_8
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->P:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n1(ZZ)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->h1()V

    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->n0:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroidx/fragment/app/ListFragment;->p0:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/ListFragment;->p0:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->n0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->n0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0002

    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xff0003

    invoke-virtual {p3, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0001

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p1, 0x102000a

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->P:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->Y:Landroid/widget/ListView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/ListFragment;->p0:Z

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->o0:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->n0:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->Z:Landroid/view/View;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->h1()V

    return-void
.end method
