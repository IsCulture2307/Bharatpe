.class public final enum Lcom/mixpanel/android/java_websocket/WebSocket$Role;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/java_websocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/java_websocket/WebSocket$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/java_websocket/WebSocket$Role;

.field public static final enum CLIENT:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

.field public static final enum SERVER:Lcom/mixpanel/android/java_websocket/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    const-string v1, "CLIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/java_websocket/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->CLIENT:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    new-instance v1, Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    const-string v2, "SERVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mixpanel/android/java_websocket/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->SERVER:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    filled-new-array {v0, v1}, [Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->$VALUES:[Lcom/mixpanel/android/java_websocket/WebSocket$Role;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/java_websocket/WebSocket$Role;
    .locals 1

    const-class v0, Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/java_websocket/WebSocket$Role;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->$VALUES:[Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    invoke-virtual {v0}, [Lcom/mixpanel/android/java_websocket/WebSocket$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    return-object v0
.end method
