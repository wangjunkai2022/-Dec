.class public Lcom/apk/p5;
.super Ljava/lang/Object;
.source "WelComePresenter.java"

# interfaces
.implements Lcom/apk/x4$goto;


# instance fields
.field public final synthetic do:Lcom/apk/q5$do;


# direct methods
.method public constructor <init>(Lcom/apk/q5$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p5;->do:Lcom/apk/q5$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public if()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/p5;->do:Lcom/apk/q5$do;

    invoke-static {}, Lcom/apk/w;->do()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4, v2}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/apk/q5$do;->do:Lorg/json/JSONObject;

    return-void
.end method
