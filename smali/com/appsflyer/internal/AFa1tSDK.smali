.class public abstract Lcom/appsflyer/internal/AFa1tSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public AFInAppEventParameterName:Landroid/app/Application;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field AFInAppEventType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field AFKeystoreWrapper:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public AFLogger:I

.field private final AFLogger$LogLevel:Z

.field private AFVersionDeclaration:[B

.field public afDebugLog:Ljava/lang/String;

.field afErrorLog:Ljava/lang/String;

.field public afInfoLog:Ljava/lang/String;

.field afRDLog:Ljava/lang/String;

.field public valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/appsflyer/internal/AFa1tSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger$LogLevel:Z

    if-eqz p4, :cond_1

    .line 5
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract AFInAppEventParameterName()Lcom/appsflyer/internal/AFc1lSDK;
.end method

.method public final AFInAppEventType(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "channel"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final AFInAppEventType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->afDebugLog:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final AFKeystoreWrapper(I)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 4

    iput p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    .line 6
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "counter"

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "counter"

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "launch_counter"

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "launch_counter"

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:Ljava/lang/String;

    return-object p0
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/appsflyer/internal/AFa1tSDK;"
        }
    .end annotation

    .line 3
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final AFKeystoreWrapper()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    return-object v0
.end method

.method public afDebugLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public afErrorLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public afInfoLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final valueOf([B)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFVersionDeclaration:[B

    return-object p0
.end method

.method public final valueOf()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger$LogLevel:Z

    return v0
.end method

.method public final values()[B
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFVersionDeclaration:[B

    return-object v0
.end method
