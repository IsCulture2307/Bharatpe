.class public Lso/plotline/insights/Plotline;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a0:Lso/plotline/insights/Plotline;


# instance fields
.field public A:Lso/plotline/insights/Tasks/g;

.field public B:Lso/plotline/insights/Tasks/d;

.field public C:Lso/plotline/insights/Database/UserDatabase;

.field public D:Lso/plotline/insights/ActivityCallback;

.field public E:Ljava/util/ArrayList;

.field public F:Ljava/util/ArrayList;

.field public G:Ljava/util/ArrayList;

.field public H:Ljava/util/ArrayList;

.field public I:Lorg/json/JSONObject;

.field public J:Ljava/util/ArrayList;

.field public K:Lso/plotline/insights/Helpers/b;

.field public L:I

.field public M:Ljava/lang/Boolean;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Lso/plotline/insights/a$o;

.field public R:Ljava/util/HashMap;

.field public S:Ljava/util/HashSet;

.field public T:Ljava/util/List;

.field public U:Lso/plotline/insights/Tasks/h;

.field public V:Lorg/json/JSONObject;

.field public W:I

.field public X:Z

.field public Y:Ljava/util/concurrent/ConcurrentHashMap;

.field public Z:Ljava/util/concurrent/ConcurrentHashMap;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Boolean;

.field public j:J

.field public k:J

.field public l:Lso/plotline/insights/Models/o;

.field public m:Lso/plotline/insights/Models/a;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/Set;

.field public p:Ljava/util/Set;

.field public q:Ljava/util/HashMap;

.field public r:Ljava/lang/String;

.field public s:Ljava/util/Set;

.field public t:I

.field public u:I

.field public v:Ljava/util/Set;

.field public w:Ljava/util/Set;

.field public x:Lso/plotline/insights/Models/d0;

.field public y:Lso/plotline/insights/Models/l;

.field public z:Lso/plotline/insights/Models/q;


# direct methods
.method public static a(Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 5

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v1

    iget-object v1, v1, Lso/plotline/insights/Plotline;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v1

    iget-object v1, v1, Lso/plotline/insights/Plotline;->R:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v3

    iget-object v3, v3, Lso/plotline/insights/Plotline;->O:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lso/plotline/insights/Models/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lso/plotline/insights/Models/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lso/plotline/insights/Models/d;->b:Landroid/graphics/RectF;

    iput-object v3, p0, Lso/plotline/insights/Models/d;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static c()Lso/plotline/insights/Plotline;
    .locals 6

    sget-object v0, Lso/plotline/insights/Plotline;->a0:Lso/plotline/insights/Plotline;

    if-nez v0, :cond_0

    new-instance v0, Lso/plotline/insights/Plotline;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lso/plotline/insights/Plotline;->a:Ljava/lang/String;

    const-string v2, "https://api.plotline.so"

    iput-object v2, v0, Lso/plotline/insights/Plotline;->b:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lso/plotline/insights/Plotline;->c:Ljava/lang/Boolean;

    iput-object v2, v0, Lso/plotline/insights/Plotline;->d:Ljava/lang/Boolean;

    iput-object v2, v0, Lso/plotline/insights/Plotline;->e:Ljava/lang/Boolean;

    iput-object v2, v0, Lso/plotline/insights/Plotline;->f:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lso/plotline/insights/Plotline;->g:Ljava/lang/Boolean;

    iput-object v3, v0, Lso/plotline/insights/Plotline;->h:Ljava/lang/Boolean;

    iput-object v2, v0, Lso/plotline/insights/Plotline;->i:Ljava/lang/Boolean;

    const-wide/16 v3, 0x3e8

    iput-wide v3, v0, Lso/plotline/insights/Plotline;->j:J

    const-wide/16 v3, 0x1f4

    iput-wide v3, v0, Lso/plotline/insights/Plotline;->k:J

    new-instance v3, Lso/plotline/insights/Models/o;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, Lso/plotline/insights/Models/o;->a:Ljava/lang/String;

    iput-object v1, v3, Lso/plotline/insights/Models/o;->b:Ljava/lang/String;

    iput-object v1, v3, Lso/plotline/insights/Models/o;->c:Ljava/lang/String;

    iput-object v3, v0, Lso/plotline/insights/Plotline;->l:Lso/plotline/insights/Models/o;

    new-instance v3, Lso/plotline/insights/Models/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, Lso/plotline/insights/Models/a;->a:Ljava/lang/String;

    const-string v4, "0"

    iput-object v4, v3, Lso/plotline/insights/Models/a;->b:Ljava/lang/String;

    iput-object v1, v3, Lso/plotline/insights/Models/a;->c:Ljava/lang/String;

    iput-object v1, v3, Lso/plotline/insights/Models/a;->d:Ljava/lang/String;

    iput-object v1, v3, Lso/plotline/insights/Models/a;->e:Ljava/lang/String;

    iput-object v3, v0, Lso/plotline/insights/Plotline;->m:Lso/plotline/insights/Models/a;

    const-string v3, "en"

    iput-object v3, v0, Lso/plotline/insights/Plotline;->n:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lso/plotline/insights/Plotline;->o:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lso/plotline/insights/Plotline;->p:Ljava/util/Set;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lso/plotline/insights/Plotline;->q:Ljava/util/HashMap;

    const-string v3, "NONE"

    iput-object v3, v0, Lso/plotline/insights/Plotline;->r:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lso/plotline/insights/Plotline;->s:Ljava/util/Set;

    const/4 v3, 0x0

    iput v3, v0, Lso/plotline/insights/Plotline;->t:I

    iput v3, v0, Lso/plotline/insights/Plotline;->u:I

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->v:Ljava/util/Set;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->w:Ljava/util/Set;

    new-instance v4, Lso/plotline/insights/Models/d0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lso/plotline/insights/Models/d0;->a:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lso/plotline/insights/Models/d0;->b:Ljava/util/HashMap;

    iput-object v4, v0, Lso/plotline/insights/Plotline;->x:Lso/plotline/insights/Models/d0;

    new-instance v4, Lso/plotline/insights/Models/l;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v4, Lso/plotline/insights/Models/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lso/plotline/insights/Models/l;->b:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lso/plotline/insights/Models/l;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lso/plotline/insights/Models/l;->d:Ljava/lang/Integer;

    iput-object v1, v4, Lso/plotline/insights/Models/l;->e:Ljava/lang/String;

    iput-object v1, v4, Lso/plotline/insights/Models/l;->f:Ljava/lang/String;

    iput-object v4, v0, Lso/plotline/insights/Plotline;->y:Lso/plotline/insights/Models/l;

    new-instance v4, Lso/plotline/insights/Models/q;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lso/plotline/insights/Models/q;->a:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lso/plotline/insights/Models/q;->b:Ljava/util/HashMap;

    iput-object v4, v0, Lso/plotline/insights/Plotline;->z:Lso/plotline/insights/Models/q;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->E:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->F:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->G:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->H:Ljava/util/ArrayList;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->I:Lorg/json/JSONObject;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->J:Ljava/util/ArrayList;

    new-instance v4, Lso/plotline/insights/Helpers/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lso/plotline/insights/Plotline;->K:Lso/plotline/insights/Helpers/b;

    const/4 v4, -0x1

    iput v4, v0, Lso/plotline/insights/Plotline;->L:I

    iput-object v2, v0, Lso/plotline/insights/Plotline;->M:Ljava/lang/Boolean;

    iput-object v1, v0, Lso/plotline/insights/Plotline;->N:Ljava/lang/String;

    iput-object v1, v0, Lso/plotline/insights/Plotline;->O:Ljava/lang/String;

    const-string v1, "NATIVE"

    iput-object v1, v0, Lso/plotline/insights/Plotline;->P:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lso/plotline/insights/Plotline;->Q:Lso/plotline/insights/a$o;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lso/plotline/insights/Plotline;->R:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lso/plotline/insights/Plotline;->S:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lso/plotline/insights/Plotline;->V:Lorg/json/JSONObject;

    iput v3, v0, Lso/plotline/insights/Plotline;->W:I

    iput-boolean v3, v0, Lso/plotline/insights/Plotline;->X:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lso/plotline/insights/Plotline;->Y:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lso/plotline/insights/Plotline;->Z:Ljava/util/concurrent/ConcurrentHashMap;

    sput-object v0, Lso/plotline/insights/Plotline;->a0:Lso/plotline/insights/Plotline;

    :cond_0
    sget-object v0, Lso/plotline/insights/Plotline;->a0:Lso/plotline/insights/Plotline;

    return-object v0
.end method

.method public static f(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lso/plotline/insights/Database/e;

    invoke-direct {v0, p0}, Lso/plotline/insights/Database/e;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lso/plotline/insights/Tasks/a;->a(Landroid/os/AsyncTask;)V

    :cond_0
    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    if-nez v0, :cond_1

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    new-instance v1, Lso/plotline/insights/ActivityCallback;

    invoke-direct {v1}, Lso/plotline/insights/ActivityCallback;-><init>()V

    iput-object v1, v0, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {p0}, Lso/plotline/insights/Track;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v2

    iget-object v2, v2, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/postpe/app/helperPackages/managers/juspay/a;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lcom/postpe/app/helperPackages/managers/juspay/a;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v1

    iget-object v1, v1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    if-eqz v1, :cond_1

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v1

    iget-object v1, v1, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->l:Lso/plotline/insights/Models/o;

    invoke-virtual {v0, p0, p2}, Lso/plotline/insights/Models/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p2

    iget-object p2, p2, Lso/plotline/insights/Plotline;->l:Lso/plotline/insights/Models/o;

    iget-object p2, p2, Lso/plotline/insights/Models/o;->a:Ljava/lang/String;

    new-instance v0, Lso/plotline/insights/Tasks/i;

    const-string v1, "appVersionCode"

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    const-string v2, ""

    iput-object v2, v0, Lso/plotline/insights/Tasks/i;->a:Ljava/lang/String;

    iput-object v2, v0, Lso/plotline/insights/Tasks/i;->b:Ljava/lang/String;

    iput-object v2, v0, Lso/plotline/insights/Tasks/i;->c:Ljava/lang/String;

    iput-object v2, v0, Lso/plotline/insights/Tasks/i;->d:Ljava/lang/String;

    iput-object v2, v0, Lso/plotline/insights/Tasks/i;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lso/plotline/insights/Tasks/i;->h:Landroid/content/Context;

    :try_start_1
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v4

    invoke-virtual {v4, p0}, Lso/plotline/insights/Plotline;->i(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, v0, Lso/plotline/insights/Tasks/i;->a:Ljava/lang/String;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lso/plotline/insights/Tasks/i;->b:Ljava/lang/String;

    const-string v5, "apiKey"

    invoke-static {p0, v5, p1}, Lso/plotline/insights/Database/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "endpoint"

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v7

    iget-object v7, v7, Lso/plotline/insights/Plotline;->b:Ljava/lang/String;

    invoke-static {p0, v5, v7}, Lso/plotline/insights/Database/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "appVersion"

    invoke-static {p0, v5, v4}, Lso/plotline/insights/Database/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v0, Lso/plotline/insights/Tasks/i;->d:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v4, v0, Lso/plotline/insights/Tasks/i;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lso/plotline/insights/Tasks/i;->c:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lso/plotline/insights/Database/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v5, :cond_2

    if-le v6, v5, :cond_2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "oldVersion"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "currentVersion"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "Default: App Updated"

    invoke-static {v2, v5}, Lso/plotline/insights/Plotline;->o(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    invoke-static {p0, v1, v4}, Lso/plotline/insights/Database/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object p1, v0, Lso/plotline/insights/Tasks/i;->f:Ljava/lang/String;

    iput-object p2, v0, Lso/plotline/insights/Tasks/i;->g:Ljava/lang/String;

    invoke-static {v0}, Lso/plotline/insights/Tasks/a;->a(Landroid/os/AsyncTask;)V

    :cond_3
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->R:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v2

    iget-object v2, v2, Lso/plotline/insights/Plotline;->O:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static k(Lorg/json/JSONObject;)V
    .locals 8

    if-eqz p0, :cond_6

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->K:Lso/plotline/insights/Helpers/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "studyButtonStyle"

    const-string v1, "studyOptionStyle"

    const-string v2, "studyDescriptionStyle"

    const-string v3, "studyTitleStyle"

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lso/plotline/insights/Helpers/b;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "optionText"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "buttonBackground"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "optionBorder"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "progressValue"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_4
    const-string v7, "buttonText"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_5
    const-string v7, "disabledButtonText"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xc

    goto :goto_2

    :sswitch_6
    const-string v7, "progressBackground"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x9

    goto :goto_2

    :sswitch_7
    const-string v7, "title"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_8
    const-string v7, "asteriskColor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xa

    goto :goto_2

    :sswitch_9
    const-string v7, "optionBackground"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_a
    const-string v7, "background"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_b
    const-string v7, "disabledButtonBackground"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xb

    goto :goto_2

    :sswitch_c
    const-string v7, "description"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sput-object v6, Lso/plotline/insights/Helpers/b;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    sput-object v6, Lso/plotline/insights/Helpers/b;->m:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    sput-object v6, Lso/plotline/insights/Helpers/b;->k:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    sput-object v6, Lso/plotline/insights/Helpers/b;->j:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    sput-object v6, Lso/plotline/insights/Helpers/b;->i:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    sput-object v6, Lso/plotline/insights/Helpers/b;->h:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    sput-object v6, Lso/plotline/insights/Helpers/b;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    sput-object v6, Lso/plotline/insights/Helpers/b;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    sput-object v6, Lso/plotline/insights/Helpers/b;->e:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    sput-object v6, Lso/plotline/insights/Helpers/b;->d:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_a
    sput-object v6, Lso/plotline/insights/Helpers/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_b
    sput-object v6, Lso/plotline/insights/Helpers/b;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    sput-object v6, Lso/plotline/insights/Helpers/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lso/plotline/insights/Models/z;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v3}, Lso/plotline/insights/Models/z;-><init>(Lorg/json/JSONObject;)V

    sput-object v4, Lso/plotline/insights/Helpers/b;->n:Lso/plotline/insights/Models/z;

    :cond_3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lso/plotline/insights/Models/z;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v3, v2}, Lso/plotline/insights/Models/z;-><init>(Lorg/json/JSONObject;)V

    sput-object v3, Lso/plotline/insights/Helpers/b;->o:Lso/plotline/insights/Models/z;

    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lso/plotline/insights/Models/z;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v2, v1}, Lso/plotline/insights/Models/z;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lso/plotline/insights/Helpers/b;->p:Lso/plotline/insights/Models/z;

    :cond_5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lso/plotline/insights/Models/z;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v1, p0}, Lso/plotline/insights/Models/z;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lso/plotline/insights/Helpers/b;->q:Lso/plotline/insights/Models/z;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_c
        -0x50cf7764 -> :sswitch_b
        -0x4f67aad2 -> :sswitch_a
        -0x3dcf947d -> :sswitch_9
        -0x333660ef -> :sswitch_8
        0x6942258 -> :sswitch_7
        0xe67df3b -> :sswitch_6
        0x141d231b -> :sswitch_5
        0x155ef77f -> :sswitch_4
        0x2e083344 -> :sswitch_3
        0x37eefd01 -> :sswitch_2
        0x4eb28200 -> :sswitch_1
        0x51deff42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Ljava/lang/Boolean;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iput-object p0, v0, Lso/plotline/insights/Plotline;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lso/plotline/insights/ActivityCallback;->a()V

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p0

    iget-object p0, p0, Lso/plotline/insights/Plotline;->A:Lso/plotline/insights/Tasks/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lso/plotline/insights/Tasks/g;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static m(Landroid/webkit/WebView;)V
    .locals 5

    if-eqz p0, :cond_2

    invoke-static {}, Lso/plotline/insights/Helpers/j;->a()Lso/plotline/insights/Helpers/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lso/plotline/insights/Helpers/j;->a()Lso/plotline/insights/Helpers/j;

    move-result-object v1

    iput-object p0, v1, Lso/plotline/insights/Helpers/j;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/app/Activity;

    goto :goto_1

    :cond_0
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "a:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lso/plotline/insights/Helpers/j;->b:Ljava/lang/String;

    invoke-static {}, Lso/plotline/insights/Helpers/j;->a()Lso/plotline/insights/Helpers/j;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lso/plotline/insights/Helpers/j;->a:Z

    invoke-static {}, Lso/plotline/insights/Helpers/j;->a()Lso/plotline/insights/Helpers/j;

    move-result-object v1

    iget-object v1, v1, Lso/plotline/insights/Helpers/j;->d:Landroid/webkit/WebView;

    new-instance v2, Lso/plotline/insights/Helpers/j$d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v2, v0}, Lso/plotline/insights/Helpers/j$d;-><init>(Lso/plotline/insights/Helpers/j;)V

    const-string p0, "PlotlineNative"

    invoke-virtual {v1, v2, p0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lso/plotline/insights/Helpers/j;->a()Lso/plotline/insights/Helpers/j;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lso/plotline/insights/Helpers/j;->a:Z

    :goto_2
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lso/plotline/insights/Track;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static o(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lso/plotline/insights/Track;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_4

    const-string v0, "a:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iput-object p0, v0, Lso/plotline/insights/Plotline;->O:Ljava/lang/String;

    iget-object v0, v0, Lso/plotline/insights/Plotline;->Q:Lso/plotline/insights/a$o;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lso/plotline/insights/a$o;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lso/plotline/insights/Plotline;->n(Ljava/lang/String;)V

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->A:Lso/plotline/insights/Tasks/g;

    if-eqz v0, :cond_2

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->A:Lso/plotline/insights/Tasks/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lso/plotline/insights/Tasks/g;->c:Z

    :cond_2
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    new-instance v1, Lso/plotline/insights/Tasks/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lso/plotline/insights/Tasks/g;->b:Ljava/util/HashSet;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lso/plotline/insights/Tasks/g;->c:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lso/plotline/insights/Tasks/g;->e:J

    iput-object p0, v1, Lso/plotline/insights/Tasks/g;->a:Ljava/lang/String;

    new-instance v2, Lso/plotline/insights/Tasks/g$a;

    invoke-direct {v2, v1}, Lso/plotline/insights/Tasks/g$a;-><init>(Lso/plotline/insights/Tasks/g;)V

    iput-object v2, v1, Lso/plotline/insights/Tasks/g;->d:Lso/plotline/insights/Tasks/g$a;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v3

    invoke-virtual {v3}, Lso/plotline/insights/Plotline;->d()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    iput-object v1, v0, Lso/plotline/insights/Plotline;->A:Lso/plotline/insights/Tasks/g;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->A:Lso/plotline/insights/Tasks/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lso/plotline/insights/Tasks/g;->a(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/voltmoney/voltsdk/c;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/voltmoney/voltsdk/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lso/plotline/insights/ActivityCallback;->a:Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lso/plotline/insights/ActivityCallback;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->I()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lso/plotline/insights/Plotline;->D:Lso/plotline/insights/ActivityCallback;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/plotline/insights/ActivityCallback;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lso/plotline/insights/Plotline;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lso/plotline/insights/Plotline;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    :try_start_0
    iget v0, p0, Lso/plotline/insights/Plotline;->t:I

    if-eqz v0, :cond_0

    iget v0, p0, Lso/plotline/insights/Plotline;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lso/plotline/insights/Plotline;->u:I

    invoke-static {}, Lso/plotline/insights/Helpers/DebugHelper;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final declared-synchronized i(Landroid/content/Context;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lso/plotline/insights/Plotline;->C:Lso/plotline/insights/Database/UserDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lso/plotline/insights/Plotline$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    new-instance v3, Lso/plotline/insights/Plotline$b;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Landroidx/room/migration/Migration;-><init>(II)V

    new-instance v5, Lso/plotline/insights/Plotline$c;

    const/4 v6, 0x4

    invoke-direct {v5, v4, v6}, Landroidx/room/migration/Migration;-><init>(II)V

    new-instance v7, Lso/plotline/insights/Plotline$d;

    const/4 v8, 0x5

    invoke-direct {v7, v6, v8}, Landroidx/room/migration/Migration;-><init>(II)V

    new-instance v9, Lso/plotline/insights/Plotline$e;

    const/4 v10, 0x6

    invoke-direct {v9, v8, v10}, Landroidx/room/migration/Migration;-><init>(II)V

    new-instance v11, Lso/plotline/insights/Plotline$f;

    const/4 v12, 0x7

    invoke-direct {v11, v10, v12}, Landroidx/room/migration/Migration;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v12, Lso/plotline/insights/Database/UserDatabase;

    const-string v13, "event-db-4"

    invoke-static {p1, v12, v13}, Landroidx/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v10, v10, [Landroidx/room/migration/Migration;

    const/4 v12, 0x0

    aput-object v0, v10, v12

    aput-object v3, v10, v1

    aput-object v5, v10, v2

    aput-object v7, v10, v4

    aput-object v9, v10, v6

    aput-object v11, v10, v8

    invoke-virtual {p1, v10}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->b()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lso/plotline/insights/Database/UserDatabase;

    iput-object p1, p0, Lso/plotline/insights/Plotline;->C:Lso/plotline/insights/Database/UserDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
