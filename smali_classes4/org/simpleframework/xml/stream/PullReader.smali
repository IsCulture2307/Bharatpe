.class Lorg/simpleframework/xml/stream/PullReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/PullReader$End;,
        Lorg/simpleframework/xml/stream/PullReader$Text;,
        Lorg/simpleframework/xml/stream/PullReader$Start;,
        Lorg/simpleframework/xml/stream/PullReader$Entry;
    }
.end annotation


# instance fields
.field public a:Lorg/xmlpull/v1/XmlPullParser;

.field public b:Lorg/simpleframework/xml/stream/EventNode;


# virtual methods
.method public final a()Lorg/simpleframework/xml/stream/EventNode;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/simpleframework/xml/stream/PullReader$Start;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/stream/PullReader$Start;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Lorg/simpleframework/xml/stream/PullReader$Entry;

    invoke-direct {v4, v0, v3}, Lorg/simpleframework/xml/stream/PullReader$Entry;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    new-instance v1, Lorg/simpleframework/xml/stream/PullReader$Text;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/stream/PullReader$Text;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    :cond_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$End;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->a()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->b:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->a()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->b:Lorg/simpleframework/xml/stream/EventNode;

    :goto_0
    return-object v0
.end method

.method public final peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->b:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->b:Lorg/simpleframework/xml/stream/EventNode;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->b:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method
