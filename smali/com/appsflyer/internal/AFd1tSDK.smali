.class public Lcom/appsflyer/internal/AFd1tSDK;
.super Lcom/appsflyer/internal/AFc1hSDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1hSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final getLevel:[Lcom/appsflyer/internal/AFc1lSDK;


# instance fields
.field public final afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

.field protected final init:Lcom/appsflyer/internal/AFd1oSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/appsflyer/internal/AFc1lSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1lSDK;

    sget-object v1, Lcom/appsflyer/internal/AFc1lSDK;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1lSDK;->onAppOpenAttributionNative:Lcom/appsflyer/internal/AFc1lSDK;

    sget-object v3, Lcom/appsflyer/internal/AFc1lSDK;->AFLogger:Lcom/appsflyer/internal/AFc1lSDK;

    filled-new-array {v0, v1, v2, v3}, [Lcom/appsflyer/internal/AFc1lSDK;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFd1tSDK;->getLevel:[Lcom/appsflyer/internal/AFc1lSDK;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1ySDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFa1tSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1ySDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFd1tSDK;-><init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFa1tSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1ySDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFc1lSDK;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/AFc1lSDK;->values:Lcom/appsflyer/internal/AFc1lSDK;

    filled-new-array {v1}, [Lcom/appsflyer/internal/AFc1lSDK;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/appsflyer/internal/AFc1hSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    .line 3
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1ySDK;->afRDLog()Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1tSDK;->init:Lcom/appsflyer/internal/AFd1oSDK;

    sget-object p1, Lcom/appsflyer/internal/AFd1tSDK;->getLevel:[Lcom/appsflyer/internal/AFc1lSDK;

    .line 4
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v0, p1, p3

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1lSDK;

    if-eq v1, v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    .line 5
    iget p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:I

    iget-object p2, p0, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1lSDK;

    if-gtz p1, :cond_1

    .line 6
    sget-object p1, Lcom/appsflyer/internal/AFc1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1lSDK;

    if-eq p2, p1, :cond_2

    iget-object p2, p0, Lcom/appsflyer/internal/AFc1nSDK;->AFKeystoreWrapper:Ljava/util/Set;

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_1
    sget-object p1, Lcom/appsflyer/internal/AFc1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1lSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFc1nSDK;->valueOf:Ljava/util/Set;

    .line 9
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Unexpected error"

    const-string v3, "*Non-printing character*"

    const-string v4, "\\p{C}"

    const-string v5, "JSON toString of eventParams map returns null"

    iget-object v0, v1, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    .line 1
    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFd1tSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1tSDK;)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    .line 2
    iget-object v6, v0, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v10, v11

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v11, v10

    goto :goto_1

    .line 7
    :goto_0
    invoke-static {v2, v0, v9}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    move-object v0, v8

    move-object v11, v10

    goto/16 :goto_5

    :goto_1
    const-string v12, "JSONObject return null String object. Trying to create AFJsonObject."

    .line 8
    invoke-static {v12, v0, v9}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :try_start_2
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {v8}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v7

    const v12, 0xf5c0

    sub-int/2addr v12, v7

    int-to-char v7, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    add-int/lit8 v12, v12, 0x3e

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    shr-int/lit8 v13, v13, 0x16

    add-int/lit8 v13, v13, 0x1f

    invoke-static {v7, v12, v13}, Lcom/appsflyer/internal/AFa1ySDK;->values(CII)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    const-string v12, "values"

    new-array v13, v9, [Ljava/lang/Class;

    const-class v14, Ljava/util/Map;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v7, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v7, :cond_1

    .line 10
    :try_start_3
    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v11, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v11, v7

    goto :goto_4

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_3
    move-exception v0

    .line 12
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    throw v3

    :catchall_4
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_2
    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 13
    :goto_2
    invoke-static {v2, v0, v9}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_3
    move-object v0, v8

    goto :goto_5

    :goto_4
    const-string v2, "AFJsonObject return null String object."

    .line 14
    invoke-static {v2, v0, v9}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_3

    :goto_5
    if-nez v11, :cond_3

    goto :goto_6

    :cond_3
    move-object v8, v11

    .line 15
    :goto_6
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Payload contains non-printing characters"

    .line 16
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    move-object v0, v8

    .line 17
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": preparing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFc1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1pSDK;

    .line 18
    invoke-virtual {v2, v6, v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFc1hSDK;->AFLogger:Lcom/appsflyer/internal/AFc1xSDK;

    iget-object v2, v1, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    move-object/from16 v3, p1

    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    return-object v0
.end method

.method public AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

    .line 21
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v1

    .line 22
    new-instance v2, Lcom/appsflyer/internal/AFa1vSDK$AFa1xSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->valueOf:Lcom/appsflyer/internal/AFb1dSDK;

    .line 23
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 24
    invoke-direct {v2, v1, v0}, Lcom/appsflyer/internal/AFa1vSDK$AFa1xSDK;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->afDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

    .line 27
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1nSDK;->AFKeystoreWrapper:Ljava/util/Set;

    .line 28
    sget-object v1, Lcom/appsflyer/internal/AFc1lSDK;->afWarnLog:Lcom/appsflyer/internal/AFc1lSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/appsflyer/internal/AFc1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1lSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1nSDK;->afDebugLog()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1tSDK;->init:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v1, "appsFlyerCount"

    .line 30
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(I)Lcom/appsflyer/internal/AFa1tSDK;

    .line 31
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v0

    const-string v1, "appsflyerKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    new-instance v0, Lcom/appsflyer/internal/AFb1rSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1rSDK;-><init>()V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "af_v"

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    .line 35
    new-instance v0, Lcom/appsflyer/internal/AFb1rSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1rSDK;-><init>()V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "af_v2"

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    return-void

    .line 37
    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUEUE: failed to update the event, is missing DevKey? Error: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final afErrorLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object v0
.end method

.method public afRDLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
