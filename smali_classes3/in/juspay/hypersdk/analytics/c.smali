.class public final synthetic Lin/juspay/hypersdk/analytics/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lin/juspay/hypersdk/analytics/c;->a:I

    iput-object p1, p0, Lin/juspay/hypersdk/analytics/c;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lin/juspay/hypersdk/analytics/c;->a:I

    iget-object v1, p0, Lin/juspay/hypersdk/analytics/c;->b:Lorg/json/JSONObject;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lin/juspay/hypersdk/analytics/LogSessioniser;->f(Lorg/json/JSONObject;)V

    return-void

    :pswitch_0
    invoke-static {v1}, Lin/juspay/hypersdk/analytics/LogPusherExp;->d(Lorg/json/JSONObject;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lin/juspay/hypersdk/analytics/LogPusher;->h(Lorg/json/JSONObject;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
