.class public final synthetic Lcom/apk/p6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

.field public final synthetic for:Landroid/content/Intent;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/p6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    iput p2, p0, Lcom/apk/p6;->if:I

    iput-object p3, p0, Lcom/apk/p6;->for:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/p6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    iget v1, p0, Lcom/apk/p6;->if:I

    iget-object v2, p0, Lcom/apk/p6;->for:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->t(ILandroid/content/Intent;)V

    return-void
.end method
