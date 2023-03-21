.class public Lcom/apk/oc;
.super Ljava/lang/Object;
.source "AppUpgradeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/oc;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/oc;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method
