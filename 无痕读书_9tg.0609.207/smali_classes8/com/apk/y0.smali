.class public final Lcom/apk/y0;
.super Lcom/apk/c1;
.source "WebInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic for:I

.field public final synthetic if:Landroid/view/View;

.field public final synthetic new:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/y0;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/apk/y0;->if:Landroid/view/View;

    iput p3, p0, Lcom/apk/y0;->for:I

    iput-object p4, p0, Lcom/apk/y0;->new:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/w0;->new()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/y0;->do:Landroid/app/Activity;

    iget-object v1, p0, Lcom/apk/y0;->if:Landroid/view/View;

    iget v2, p0, Lcom/apk/y0;->for:I

    iget-object v3, p0, Lcom/apk/y0;->new:Landroid/widget/ImageView;

    .line 4
    invoke-static {v0, v1, v2, v3, p1}, Lcom/apk/w0;->for(Landroid/app/Activity;Landroid/view/View;ILandroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
