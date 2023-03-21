.class public Lcom/swl/gg/ggs/SwlAdBesttopView$1;
.super Lcom/apk/bg;
.source "SwlAdBesttopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdBesttopView;->setClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdBesttopView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$000(Lcom/swl/gg/ggs/SwlAdBesttopView;)Lcom/apk/n40;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$000(Lcom/swl/gg/ggs/SwlAdBesttopView;)Lcom/apk/n40;

    move-result-object p1

    check-cast p1, Lcom/apk/class$do;

    invoke-virtual {p1}, Lcom/apk/class$do;->if()V

    :cond_0
    return-void
.end method
