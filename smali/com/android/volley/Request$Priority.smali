.class public final enum Lcom/android/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/volley/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/volley/Request$Priority;

.field public static final enum HIGH:Lcom/android/volley/Request$Priority;

.field public static final enum IMMEDIATE:Lcom/android/volley/Request$Priority;

.field public static final enum LOW:Lcom/android/volley/Request$Priority;

.field public static final enum NORMAL:Lcom/android/volley/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/volley/Request$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    new-instance v1, Lcom/android/volley/Request$Priority;

    const-string v2, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    new-instance v2, Lcom/android/volley/Request$Priority;

    const-string v3, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    new-instance v3, Lcom/android/volley/Request$Priority;

    const-string v4, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/volley/Request$Priority;

    move-result-object v0

    sput-object v0, Lcom/android/volley/Request$Priority;->$VALUES:[Lcom/android/volley/Request$Priority;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/volley/Request$Priority;
    .locals 1

    const-class v0, Lcom/android/volley/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/volley/Request$Priority;

    return-object p0
.end method

.method public static values()[Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->$VALUES:[Lcom/android/volley/Request$Priority;

    invoke-virtual {v0}, [Lcom/android/volley/Request$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/volley/Request$Priority;

    return-object v0
.end method
