.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;
.super Ljava/lang/Object;
.source "AdNetworkConfValue.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->b:Ljava/lang/String;

    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;-><init>()V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->c:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p2

    iput-object v3, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a:Ljava/lang/String;

    move-object/from16 v4, p3

    iput-object v4, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->b:Ljava/lang/String;

    new-instance v14, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->c:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->c:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->c:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x37

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v2, 0x48

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x34

    if-eq v1, v2, :cond_0

    const/16 v2, 0x35

    if-eq v1, v2, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    packed-switch v0, :pswitch_data_1

    const/16 v0, 0x1e

    goto :goto_2

    :pswitch_2
    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    :pswitch_3
    const-string v0, "AdNetworkConfValue{mAppId=\'"

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mAppKey=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->b:Ljava/lang/String;

    const-string v3, ", mGMCustomConfig="

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->c:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_3
    :pswitch_4
    const/16 v2, 0x49

    const/16 v1, 0x10

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
