.class public Lcom/swl/gg/ggs/SwlAdAdRectangle$2;
.super Ljava/lang/Object;
.source "SwlAdAdRectangle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdAdRectangle;->setRectangle(Lcom/swl/gg/bean/SwlAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdAdRectangle;

.field public final synthetic val$swlAdView:Lcom/swl/gg/bean/SwlAdView;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdAdRectangle;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle$2;->this$0:Lcom/swl/gg/ggs/SwlAdAdRectangle;

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle$2;->val$swlAdView:Lcom/swl/gg/bean/SwlAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle$2;->this$0:Lcom/swl/gg/ggs/SwlAdAdRectangle;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdAdRectangle;->access$200(Lcom/swl/gg/ggs/SwlAdAdRectangle;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle$2;->val$swlAdView:Lcom/swl/gg/bean/SwlAdView;

    invoke-static {p1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->clickAd(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method
