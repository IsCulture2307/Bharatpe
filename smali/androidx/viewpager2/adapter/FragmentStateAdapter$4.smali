.class Landroidx/viewpager2/adapter/FragmentStateAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-boolean v0, v1, Landroidx/viewpager2/adapter/FragmentStateAdapter;->j:Z

    invoke-virtual {v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->v()V

    return-void
.end method
