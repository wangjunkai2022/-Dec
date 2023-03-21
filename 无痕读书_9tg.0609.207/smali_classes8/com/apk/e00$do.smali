.class public final Lcom/apk/e00$do;
.super Ljava/lang/Object;
.source "ComicReadModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/e00;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:I

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e00$do;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/e00$do;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/e00$do;->for:Ljava/lang/String;

    iput p4, p0, Lcom/apk/e00$do;->new:I

    iput-object p5, p0, Lcom/apk/e00$do;->try:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/e00$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/e00$do;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/e00$do;->for:Ljava/lang/String;

    iget v3, p0, Lcom/apk/e00$do;->new:I

    iget-object v4, p0, Lcom/apk/e00$do;->try:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/e00;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
