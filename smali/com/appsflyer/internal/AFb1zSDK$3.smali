.class final Lcom/appsflyer/internal/AFb1zSDK$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1zSDK;->valueOf(Landroid/content/Context;Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field AFInAppEventParameterName:Z

.field AFInAppEventType:Z

.field private synthetic valueOf:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1zSDK$3;->valueOf:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appsflyer/internal/AFb1zSDK$3;->AFInAppEventParameterName:Z

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1zSDK$3;->valueOf:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appsflyer/internal/AFb1zSDK$3$1;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFb1zSDK$3$1;-><init>(Landroid/app/Activity;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1zSDK$3;->valueOf:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFb1zSDK$3$4;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/AFb1zSDK$3$4;-><init>(Lcom/appsflyer/internal/AFb1zSDK$3;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1zSDK$3;->valueOf:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFb1zSDK$3$2;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/AFb1zSDK$3$2;-><init>(Lcom/appsflyer/internal/AFb1zSDK$3;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
