.class public final enum Lcom/fasterxml/jackson/databind/type/LogicalType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/type/LogicalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Array:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Binary:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Collection:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Map:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum POJO:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Textual:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v1, "Array"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Array:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v1, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v2, "Collection"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/type/LogicalType;->Collection:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v2, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v3, "Map"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/databind/type/LogicalType;->Map:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v3, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v4, "POJO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/type/LogicalType;->POJO:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v4, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v5, "Untyped"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/type/LogicalType;->Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v5, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v6, "Integer"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v6, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v7, "Float"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/fasterxml/jackson/databind/type/LogicalType;->Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v7, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v8, "Boolean"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v8, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v9, "Enum"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v9, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v10, "Textual"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/fasterxml/jackson/databind/type/LogicalType;->Textual:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v10, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v11, "Binary"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/fasterxml/jackson/databind/type/LogicalType;->Binary:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v11, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v12, "DateTime"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/fasterxml/jackson/databind/type/LogicalType;->DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

    new-instance v12, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v13, "OtherScalar"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/fasterxml/jackson/databind/type/LogicalType;->OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

    filled-new-array/range {v0 .. v12}, [Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->$VALUES:[Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class p1, [B

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Binary:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Array:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0

    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Collection:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0

    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Map:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0

    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Textual:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0

    :cond_5
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/type/LogicalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->$VALUES:[Lcom/fasterxml/jackson/databind/type/LogicalType;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/type/LogicalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method
