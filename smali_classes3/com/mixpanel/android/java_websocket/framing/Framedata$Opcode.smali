.class public final enum Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/java_websocket/framing/Framedata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Opcode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

.field public static final enum BINARY:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

.field public static final enum CLOSING:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

.field public static final enum CONTINUOUS:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

.field public static final enum PING:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

.field public static final enum PONG:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

.field public static final enum TEXT:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    new-instance v1, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    const-string v2, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    new-instance v2, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    const-string v3, "BINARY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    new-instance v3, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    const-string v4, "PING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->PING:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    new-instance v4, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    const-string v5, "PONG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    new-instance v5, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    const-string v6, "CLOSING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    filled-new-array/range {v0 .. v5}, [Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->$VALUES:[Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;
    .locals 1

    const-class v0, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->$VALUES:[Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0}, [Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    return-object v0
.end method
