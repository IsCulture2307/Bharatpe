.class public Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x6db9dfe70a9994e4L


# instance fields
.field private newsize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->newsize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->newsize:I

    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    iget v0, p0, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->newsize:I

    return v0
.end method
