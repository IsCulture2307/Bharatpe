.class public Lcom/fasterxml/jackson/databind/util/TypeKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _isTyped:Z

.field protected _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Ljava/lang/Class;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Ljava/lang/Class;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    return-void
.end method

.method public static final typedHash(Lcom/fasterxml/jackson/databind/JavaType;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    return p0
.end method

.method public static final typedHash(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final untypedHash(Lcom/fasterxml/jackson/databind/JavaType;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final untypedHash(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/databind/util/TypeKey;

    iget-boolean v2, p1, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    return v0
.end method

.method public isTyped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    const-string v1, "}"

    const-string v2, ", typed? "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "{class: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/b;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    invoke-static {v0, v2, v1}, La/a/a/e/a/k;->s(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "{type: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    invoke-static {v0, v2, v1}, La/a/a/e/a/k;->s(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
