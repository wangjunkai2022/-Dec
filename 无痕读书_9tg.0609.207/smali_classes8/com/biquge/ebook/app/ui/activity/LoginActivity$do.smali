.class public Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/LoginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;->for:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;->for:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;->if:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->i(Lcom/biquge/ebook/app/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
