.class public final enum Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

.field public static final enum DEFAULT:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

.field public static final enum DELEGATING:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

.field public static final enum DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

.field public static final enum PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    const-string v2, "DELEGATING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DELEGATING:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    new-instance v2, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    const-string v3, "PROPERTIES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    new-instance v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    const-string v4, "DISABLED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    return-object v0
.end method
