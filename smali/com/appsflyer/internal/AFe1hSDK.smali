.class public final Lcom/appsflyer/internal/AFe1hSDK;
.super Lcom/appsflyer/internal/AFe1nSDK;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "store"

    const-string v1, "xiaomi"

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFe1nSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static valueOf(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/appsflyer/internal/AFe1nSDK;->AFInAppEventType(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "com.miui.referrer.api.GetAppsReferrerClient"

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Xiaomi Install Referrer is allowed"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string v1, "An error occurred while trying to access GetAppsReferrerClient"

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_0
    const-string p0, "Class com.miui.referrer.api.GetAppsReferrerClient not found"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final AFKeystoreWrapper(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/appsflyer/internal/AFe1hSDK;->valueOf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFLogger:J

    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;->valueOf:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    new-instance v0, Lcom/appsflyer/internal/AFe1iSDK$5;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFe1iSDK$5;-><init>(Lcom/appsflyer/internal/AFe1iSDK;)V

    invoke-virtual {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    sget-object v0, Lcom/miui/referrer/api/GetAppsReferrerClient;->Companion:Lcom/miui/referrer/api/GetAppsReferrerClient$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/referrer/api/GetAppsReferrerClient$Companion;->newBuilder(Landroid/content/Context;)Lcom/miui/referrer/api/GetAppsReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/referrer/api/GetAppsReferrerClient$Builder;->build()Lcom/miui/referrer/api/GetAppsReferrerClient;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/AFe1hSDK$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/appsflyer/internal/AFe1hSDK$2;-><init>(Lcom/appsflyer/internal/AFe1hSDK;Landroid/content/Context;Lcom/miui/referrer/api/GetAppsReferrerClient;)V

    invoke-virtual {v0, v1}, Lcom/miui/referrer/api/GetAppsReferrerClient;->startConnection(Lcom/miui/referrer/api/GetAppsReferrerStateListener;)V

    return-void
.end method
