.class public Lcom/apk/throw;
.super Ljava/lang/Object;
.source "AdBlockNativeHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/swl/gg/bean/SwlAdView;

.field public final synthetic if:Lcom/apk/final;


# direct methods
.method public constructor <init>(Lcom/apk/final;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/throw;->if:Lcom/apk/final;

    iput-object p2, p0, Lcom/apk/throw;->do:Lcom/swl/gg/bean/SwlAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/throw;->if:Lcom/apk/final;

    .line 2
    iget-object p1, p1, Lcom/apk/final;->else:Landroid/app/Activity;

    .line 3
    iget-object v0, p0, Lcom/apk/throw;->do:Lcom/swl/gg/bean/SwlAdView;

    invoke-static {p1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->clickAd(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method
