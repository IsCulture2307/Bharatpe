.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/UUID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/lang/StackTraceElement;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-class v4, Ljava/nio/ByteBuffer;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-class v4, Ljava/lang/Void;

    aput-object v4, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, v1, v2

    sget-object v5, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->types()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-class p1, Ljava/util/UUID;

    if-ne p0, p1, :cond_1

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;-><init>()V

    return-object p0

    :cond_1
    const-class p1, Ljava/lang/StackTraceElement;

    if-ne p0, p1, :cond_2

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;-><init>()V

    return-object p0

    :cond_2
    const-class p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p0, p1, :cond_3

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;-><init>()V

    return-object p0

    :cond_3
    const-class p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p0, p1, :cond_4

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/AtomicIntegerDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/AtomicIntegerDeserializer;-><init>()V

    return-object p0

    :cond_4
    const-class p1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p0, p1, :cond_5

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/AtomicLongDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/AtomicLongDeserializer;-><init>()V

    return-object p0

    :cond_5
    const-class p1, Ljava/nio/ByteBuffer;

    if-ne p0, p1, :cond_6

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;-><init>()V

    return-object p0

    :cond_6
    const-class p1, Ljava/lang/Void;

    if-ne p0, p1, :cond_7

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasDeserializerFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
