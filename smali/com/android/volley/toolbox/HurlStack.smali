.class public Lcom/android/volley/toolbox/HurlStack;
.super Lcom/android/volley/toolbox/BaseHttpStack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;,
        Lcom/android/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

.field public final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/HurlStack;->a:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    iput-object v0, p0, Lcom/android/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/Request;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static c(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/volley/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static d(Lcom/android/volley/Request;Ljava/net/HttpURLConnection;)V
    .locals 2

    iget v0, p0, Lcom/android/volley/Request;->b:I

    const-string v1, "POST"

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string v0, "PATCH"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/volley/Request;->g()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0, v0}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V

    goto :goto_0

    :pswitch_1
    const-string p0, "TRACE"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p0, "OPTIONS"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p0, "HEAD"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p0, "DELETE"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/volley/Request;->g()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0, v0}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/volley/Request;->g()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0, v0}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V

    goto :goto_0

    :pswitch_7
    const-string p0, "GET"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
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


# virtual methods
.method public final a(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/android/volley/Request;->n()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p1, Lcom/android/volley/Request;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/volley/toolbox/HurlStack;->a:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/volley/toolbox/UrlRewriter;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "URL blocked by rewriter: "

    invoke-static {v0, p2}, La/a/a/e/a/k;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/URLConnection;

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v2, p1, Lcom/android/volley/Request;->l:Lcom/android/volley/RetryPolicy;

    invoke-interface {v2}, Lcom/android/volley/RetryPolicy;->b()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v4, "https"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_2

    move-object v4, p2

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1, p2}, Lcom/android/volley/toolbox/HurlStack;->d(Lcom/android/volley/Request;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget p1, p1, Lcom/android/volley/Request;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/16 p1, 0x64

    if-gt p1, v0, :cond_4

    const/16 p1, 0xc8

    if-lt v0, p1, :cond_5

    :cond_4
    const/16 p1, 0xcc

    if-eq v0, p1, :cond_5

    const/16 p1, 0x130

    if-eq v0, p1, :cond_5

    :try_start_1
    new-instance p1, Lcom/android/volley/toolbox/HttpResponse;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/HurlStack;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    new-instance v4, Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;

    invoke-direct {v4, p2}, Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/ArrayList;ILjava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :goto_2
    move v2, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_5
    :try_start_2
    new-instance p1, Lcom/android/volley/toolbox/HttpResponse;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/HurlStack;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_6
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-nez v2, :cond_7

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw p1
.end method
