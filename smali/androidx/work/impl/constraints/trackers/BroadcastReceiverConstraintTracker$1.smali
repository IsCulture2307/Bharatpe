.class Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;->a:Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;->a:Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    invoke-virtual {p1, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->g(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
