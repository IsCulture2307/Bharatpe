.class public final enum Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Typing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

.field public static final enum DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

.field public static final enum DYNAMIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

.field public static final enum STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DYNAMIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    new-instance v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    const-string v2, "STATIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    new-instance v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    const-string v3, "DEFAULT_TYPING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    filled-new-array {v0, v1, v2}, [Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->$VALUES:[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->$VALUES:[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    return-object v0
.end method
