.class public Lcom/apk/qb;
.super Lcom/apk/d1;
.source "HomeFragment.java"


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/d1;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/apk/finally;->p:Lorg/json/JSONObject;

    .line 3
    iput-object v1, v0, Lcom/apk/finally;->o:Lorg/json/JSONObject;

    return-void
.end method
