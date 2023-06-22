clear all;
% The following commented code is execute only one time for getting MFCC
%  raw data of wave files

%Design Unisversal Background Model - UBM- from Various Speakers

% for t=1:231
%     mySourceFile = ['D:/ubmspeakersdata/' int2str(t) '.wav'];
%     myTargetFile = ['D:/ubmspeakersdata1/' int2str(t) '.mfc']
%     args=['-A -D -T 1 -C ']; 
%     config1='D:/HTK-3.4.1/htk/config';
%     rv= system([get_htk_path 'HCopy ' args  config1 ' '  mySourceFile ' '  myTargetFile]);
% end
% 
% fid = fopen( 'results1.txt', 'wt' );
% for t=1:231
%     mySourceFile = ['D:\ubmspeakersdata1\' int2str(t) '.mfc'];
%      fprintf( fid, '%s\n',mySourceFile );
% end
%  A2='results1.txt';
     g='ubmivector';
 ubmmodel = gmm_em(A2, 256 ,8, 2, 1, g);
% 
% 
  %No_of_Speakers=2;
  %No_of_Utterances=50;
% args=['-A -D -T 1 -C ']; 
% config1='D:/HTK-3.4.1/htk/config';
%   for i=1:No_of_Speakers
%       for j=1:No_of_Utterances
%          mySourceFile = ['D:/tspeakers/' int2str(i) '/' int2str(j) '.wav'];
%          myTargetFile = ['D:/tspeakers/' int2str(i) '/' int2str(j) '.mfc'];
%          rv= system([get_htk_path 'HCopy ' args  config1 ' '  mySourceFile ' '  myTargetFile]);
%      end
%   end
%     args=['-A -D -T 1 -C ']; 
%      config1='D:/HTK-3.4.1/htk/config';
%      for i=1:129
% 
%           mySourceFile = ['D:/wavfiles/' int2str(i) '.wav'];
%           myTargetFile = ['D:/wavfiles/' int2str(i)  '.mfc'];
%           rv= system([get_htk_path 'HCopy ' args  config1 ' '  mySourceFile ' '  myTargetFile]);
%       end
%   end  

%      A3='utterances.txt';
%          config='m';
%          g1='s1';
%        for i=1:No_of_Speakers
%                 for j=1:No_of_Utterances
%                     fid = fopen( 'utterances.txt', 'wt' );
%                         targetpath=['D:\tspeakers\' int2str(i) '\' int2str(j) '.mfc'];
%                         fprintf( fid, '%s\n',targetpath);
%                         gmmadaptmodel{i,j} = mapAdapt(A3, ubmmodel, 10, config, g1);
%                         save(g1,'-append');
%                     fclose(fid);
%      end
%      end
% 
% 
%      
% 
