.class public Lso/plotline/insights/Track;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 12

    invoke-static {p1}, Lso/plotline/insights/Helpers/i;->j(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    iget-object v0, v0, Lso/plotline/insights/Plotline;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lso/plotline/insights/Plotline;->H:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p1, 0x64

    if-lt p0, p1, :cond_0

    iget-object p0, v0, Lso/plotline/insights/Plotline;->H:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, v0, Lso/plotline/insights/Plotline;->H:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lso/plotline/insights/Plotline;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "eventName"

    if-eqz v3, :cond_4

    iget-object v3, v0, Lso/plotline/insights/Plotline;->o:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lso/plotline/insights/Network/a;->a()Lretrofit2/Retrofit;

    move-result-object v6

    const-class v7, Lso/plotline/insights/Network/e;

    invoke-virtual {v6, v7}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lso/plotline/insights/Network/e;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    invoke-virtual {v7, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string v3, "propertyKeys"

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {v4}, Lso/plotline/insights/Network/d;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lso/plotline/insights/Network/e;->j(Ljava/util/Map;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    new-instance v6, Lso/plotline/insights/Network/d$i;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v6}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_4
    if-eqz p1, :cond_7

    iget-object v3, v0, Lso/plotline/insights/Plotline;->q:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, v0, Lso/plotline/insights/Plotline;->q:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_2
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    :try_start_2
    invoke-static {v7, p1}, Lso/plotline/insights/Tasks/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_6
    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v3

    iget-object v3, v3, Lso/plotline/insights/Plotline;->y:Lso/plotline/insights/Models/l;

    invoke-virtual {v3, v4, v2, v1}, Lso/plotline/insights/Models/l;->b(Landroid/content/Context;Ljava/util/Set;Z)V

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v1

    iget-object v1, v1, Lso/plotline/insights/Plotline;->r:Ljava/lang/String;

    const-string v3, "ALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "SELECTED"

    if-nez v6, :cond_8

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v6

    iget-object v6, v6, Lso/plotline/insights/Plotline;->s:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_e

    :cond_8
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_a

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "properties"

    invoke-virtual {v10, v11, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v11

    iget-object v11, v11, Lso/plotline/insights/Plotline;->s:Ljava/util/Set;

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v9, Lso/plotline/insights/Models/f;

    invoke-direct {v9, v10}, Lso/plotline/insights/Models/f;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v9}, Lso/plotline/insights/Tasks/h;->b(Lso/plotline/insights/Models/f;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v11

    iget-object v11, v11, Lso/plotline/insights/Plotline;->v:Ljava/util/Set;

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Lso/plotline/insights/Models/f;

    invoke-direct {v9, v10}, Lso/plotline/insights/Models/f;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v9}, Lso/plotline/insights/Tasks/h;->b(Lso/plotline/insights/Models/f;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    :cond_d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    invoke-static {v6, v4}, Lso/plotline/insights/Network/d;->i(Lorg/json/JSONArray;Lso/plotline/insights/Tasks/h$a;)V

    :cond_e
    new-instance v1, Lso/plotline/insights/Database/k;

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    iput-object p0, v1, Lso/plotline/insights/Database/k;->a:Ljava/lang/String;

    iput-object v2, v1, Lso/plotline/insights/Database/k;->b:Ljava/util/Set;

    iput-object p1, v1, Lso/plotline/insights/Database/k;->c:Lorg/json/JSONObject;

    invoke-static {v1}, Lso/plotline/insights/Tasks/a;->a(Landroid/os/AsyncTask;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, Lso/plotline/insights/Plotline;->x:Lso/plotline/insights/Models/d0;

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v5, Lso/plotline/insights/Models/d0;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v5, v5, Lso/plotline/insights/Models/d0;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_f

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, v0, Lso/plotline/insights/Plotline;->y:Lso/plotline/insights/Models/l;

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v7, Lso/plotline/insights/Models/l;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v7, v7, Lso/plotline/insights/Models/l;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_11

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_12
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    iget-object v9, v0, Lso/plotline/insights/Plotline;->z:Lso/plotline/insights/Models/q;

    if-eqz v8, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v9, Lso/plotline/insights/Models/q;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v9, v9, Lso/plotline/insights/Models/q;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_13

    invoke-interface {v4, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_17

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v7, Lso/plotline/insights/Models/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lso/plotline/insights/Models/j;

    if-eqz v6, :cond_15

    iget-object v8, v6, Lso/plotline/insights/Models/j;->j:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v6, Lso/plotline/insights/Models/j;->o:Lso/plotline/insights/Models/ClientElementSelector;

    invoke-static {v8}, Lso/plotline/insights/Models/ClientElementSelector;->a(Lso/plotline/insights/Models/ClientElementSelector;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_7

    :cond_16
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_19

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v5, Lso/plotline/insights/Models/d0;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lso/plotline/insights/Models/c0;

    if-nez v3, :cond_18

    goto :goto_8

    :cond_18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_19
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v9, Lso/plotline/insights/Models/q;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lso/plotline/insights/Models/p;

    if-nez v3, :cond_1a

    goto :goto_9

    :cond_1a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-static {}, Lso/plotline/insights/Helpers/DebugHelper;->a()V

    new-instance v1, Lcom/postpe/app/helperPackages/contact/a;

    invoke-direct {v1, p0, v2, p1}, Lcom/postpe/app/helperPackages/contact/a;-><init>(Ljava/lang/String;Ljava/util/HashSet;Lorg/json/JSONObject;)V

    new-instance p0, Lso/plotline/insights/Database/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lso/plotline/insights/Database/g;->a:Ljava/util/List;

    iput-object v1, p0, Lso/plotline/insights/Database/g;->b:Lso/plotline/insights/Database/f;

    invoke-static {p0}, Lso/plotline/insights/Tasks/a;->a(Landroid/os/AsyncTask;)V

    :cond_1c
    return-void
.end method

.method public static c(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Lorg/json/JSONObject;Landroid/content/Context;Z)V
    .locals 9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    invoke-virtual {v0}, Lso/plotline/insights/Plotline;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v1, v0, Lso/plotline/insights/Plotline;->t:I

    if-eqz v1, :cond_3

    iget v0, v0, Lso/plotline/insights/Plotline;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_3

    invoke-static {}, Lso/plotline/insights/Helpers/DebugHelper;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso/plotline/insights/Models/b;

    iget-object v2, v1, Lso/plotline/insights/Models/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v4, v0

    goto :goto_1

    :catch_0
    :cond_3
    move-object v4, p0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    const/4 p0, 0x0

    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso/plotline/insights/Models/b;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object v2

    iget-object v2, v2, Lso/plotline/insights/Plotline;->Y:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Lso/plotline/insights/Models/b;->a:Ljava/lang/String;

    new-instance v3, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v5, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso/plotline/insights/Models/b;

    iget-object v1, v1, Lso/plotline/insights/Models/b;->h:Lso/plotline/insights/Models/r;

    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lso/plotline/insights/Models/r;->d:Z

    if-eqz v2, :cond_6

    move-object p0, v1

    :cond_7
    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/voltmoney/voltsdk/c;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/voltmoney/voltsdk/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    new-instance v8, Lcom/google/firebase/remoteconfig/internal/b;

    invoke-direct {v8, p4, p2, p5}, Lcom/google/firebase/remoteconfig/internal/b;-><init>(Landroid/content/Context;Ljava/util/Set;Z)V

    invoke-static {}, Lso/plotline/insights/Network/a;->a()Lretrofit2/Retrofit;

    move-result-object p0

    const-class p2, Lso/plotline/insights/Network/e;

    invoke-virtual {p0, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lso/plotline/insights/Network/e;

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lso/plotline/insights/Models/b;

    iget-object v0, p5, Lso/plotline/insights/Models/b;->d:Ljava/util/ArrayList;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p5, p5, Lso/plotline/insights/Models/b;->e:Lorg/json/JSONObject;

    invoke-virtual {p5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :catch_2
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_2
    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lso/plotline/insights/Helpers/i;->t(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_5
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_b
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p4

    iget-boolean p4, p4, Lso/plotline/insights/Plotline;->X:Z

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_d

    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p4

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p5, p4, Lso/plotline/insights/Plotline;->d:Ljava/lang/Boolean;

    :cond_d
    new-instance p4, Lso/plotline/insights/Tasks/b;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/firebase/remoteconfig/internal/c;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/remoteconfig/internal/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p4, p5, p2, p0}, Lso/plotline/insights/Tasks/b;-><init>(Ljava/util/List;Ljava/util/HashMap;Lso/plotline/insights/Tasks/b$a;)V

    invoke-static {p4}, Lso/plotline/insights/Tasks/a;->a(Landroid/os/AsyncTask;)V

    :cond_e
    :goto_6
    return-void
.end method

.method public static d(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p0}, Lso/plotline/insights/Track;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lso/plotline/insights/Plotline;->c()Lso/plotline/insights/Plotline;

    move-result-object p0

    invoke-virtual {p0}, Lso/plotline/insights/Plotline;->d()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lso/plotline/insights/Track;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
